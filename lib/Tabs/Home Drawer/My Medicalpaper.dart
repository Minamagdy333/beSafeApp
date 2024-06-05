import 'package:be_safe3/Apis/exceptions.dart';
import 'package:be_safe3/signals/api_signals.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

final medicalPaperSignal = futureSignal(() async {
  final response = await repoSignal.value.fetchRecords('medical paper');
  return response;
});

class MyMedicalPaper extends StatelessWidget {
  const MyMedicalPaper({super.key});
  static const String routName = "MY Medical paper";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Medical Paper"),
      ),
      body: Center(
        child: Watch.builder(
          builder: (context) {
            final snapshot = medicalPaperSignal.value;
            if (snapshot.isLoading) {
              return const CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Error: ${(snapshot.error as ServerException).message}"),
                  ElevatedButton(
                    onPressed: medicalPaperSignal.refresh,
                    child: const Text("Refresh"),
                  ),
                ],
              );
            }
            if (!snapshot.hasValue || snapshot.value == null) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("No Data"),
                  ElevatedButton(
                    onPressed: medicalPaperSignal.refresh,
                    child: const Text("Refresh"),
                  ),
                ],
              );
            }
            final medications = snapshot.value!;
            return RefreshIndicator(
              onRefresh: medicalPaperSignal.refresh,
              child: ListView.builder(
                itemCount: medications.length,
                itemBuilder: (context, index) {
                  final medication = medications[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.network(medication.mediaUrl!),
                          Text(medication.dateTimeStamp!),
                          if (medication.comment != null)
                            Text(medication.comment!),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
