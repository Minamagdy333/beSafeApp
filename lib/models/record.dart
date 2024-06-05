class MedicalRecord {
  
  final int? id;
  final String? mediaUrl;
  final String? comment;
  final String? dateTimeStamp;
  final String? type;

  MedicalRecord({
    this.id,
    this.mediaUrl,
    this.comment,
    this.dateTimeStamp,
    this.type,
  });

  factory MedicalRecord.fromJson(Map<String, dynamic> json) {
    return MedicalRecord(
      id: json['id'],
      mediaUrl: json['mediaUrl'],
      comment: json['comment'],
      dateTimeStamp: json['dateTimeStamp'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'mediaUrl': mediaUrl,
      'comment': comment,
      'dateTimeStamp': dateTimeStamp,
      'type': type,
    };
  }
}