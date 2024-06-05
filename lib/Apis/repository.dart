import 'dart:io';

import 'package:be_safe3/Apis/dio_client.dart';
import 'package:be_safe3/Apis/exceptions.dart';
import 'package:be_safe3/models/medicine.dart';
import 'package:be_safe3/models/record.dart';
import 'package:be_safe3/models/user_model.dart';
import 'package:be_safe3/signals/user_signal.dart';
import 'package:dio/dio.dart';

class MainRepository {
  final DioClient _client;

  MainRepository(this._client);

  Future<UserModel> login({required email, required String password}) async {
    return _errorWrapper(() async {
      final response = await _client.post(
        '/account/login',
        data: {
          'emailOrPhoneNumber': email,
          'password': password,
        },
      );

      return UserModel.fromJson(response.data);
    });
  }

  Future<void> register({
    required String email,
    required String name,
    required String phoneNumber,
    required String password,
    required String address,
  }) async {
    return _errorWrapper(() async {
      await _client.post(
        '/account/registerPatient',
        data: {
          'name': name,
          'email': email,
          'password': password,
          'phoneNumber': phoneNumber,
          'address': address,
        },
      );
    });
  }

  Future<void> sendResetPasswordOTP(String email) async {
    return _errorWrapper(() async {
      await _client.post(
        '/account/sendEmailResetPassword',
        data: {'email': email},
      );
    });
  }

  Future<void> sendEmailVerification(String email) async {
    return _errorWrapper(() async {
      await _client.post(
        '/account/sendEmailVerification',
        data: {'email': email},
      );
    });
  }

  Future<UserModel> verifyEmail(String email, String otp) async {
    return _errorWrapper(() async {
      final response = await _client.post(
        '/account/verifyEmail',
        data: {
          'email': email,
          'otp': otp,
        },
      );
      return UserModel.fromJson(response.data);
    });
  }

  Future<void> resetPassword(
    String email,
    String password,
    String otp,
  ) async {
    return _errorWrapper(() async {
      await _client.post(
        '/account/resetPassword',
        data: {
          'email': email,
          'password': password,
          'otp': otp,
        },
      );
    });
  }

  Future<void> setLocation({
    required int userId,
    required ({double lat, double lng}) location,
  }) {
    return _errorWrapper(() async {
      await _client.post(
        '/locations',
        data: {
          'userId': userId,
          'latitude': location.lat.toString(),
          'longitude': location.lng.toString(),
        },
      );
    });
  }

  Future<void> setMedicication({
    required String power,
    required String name,
    required String type,
  }) async {
    return _errorWrapper(() async {
      await _client.post(
        '/medicines',
        data: {
          "name": name,
          "type": type,
          "power": power,
          "time": DateTime.now().toIso8601String(),
        },
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader:
                "Bearer ${userModelSignal.value?.token}",
          },
        ),
      );
    });
  }

  Future<List<Medicine>> fetchMedicication() async {
    return _errorWrapper(() async {
      final response = await _client.get(
        '/medicines',
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader:
                "Bearer ${userModelSignal.value?.token}",
          },
        ),
      );
      return List<Medicine>.from(
          response.data['data'].map((e) => Medicine.fromJson(e)));
    });
  }

  Future<void> uploadRecord({
    required String comment,
    required String type,
    required File media,
  }) async {
    return _errorWrapper(() async {
      await _client.post(
        '/medicalRecords',
        data: FormData.fromMap({
          "Comment": comment,
          "Type": type,
          "Media": await MultipartFile.fromFile(media.path),
          "DateTimeStamp": DateTime.now().toIso8601String(),
        }),
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader:
                "Bearer ${userModelSignal.value?.token}",
          },
        ),
      );
    });
  }

  Future<List<MedicalRecord>> fetchRecords(String type) async {
    return _errorWrapper(() async {
      final response = await _client.get(
        '/medicalRecords',
        queryParameters: {'type': type},
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader:
                "Bearer ${userModelSignal.value?.token}",
          },
        ),
      );
      return List<MedicalRecord>.from(
        response.data['data'].map((e) => MedicalRecord.fromJson(e)),
      );
    });
  }

  Future<T> _errorWrapper<T>(
    Future<T> Function() request, {
    Future<T> Function(DioException e)? onError,
  }) async {
    try {
      return await request();
    } on DioException catch (e) {
      if (onError != null) {
        return onError(e);
      } else {
        final statusCode = e.response?.statusCode;
        if (statusCode == 400) {
          throw ValidationException(
            e.response?.data['message'] ?? 'Validation error',
            List<String>.from(e.response?.data['errors'] ?? []),
            e.response?.statusCode,
          );
        } else {
          throw ServerException(
            e.response?.data['message'] ?? 'Server error',
            e.response?.statusCode,
          );
        }
      }
    }
  }
}
