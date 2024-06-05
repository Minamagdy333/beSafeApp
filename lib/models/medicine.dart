class Medicine {
  final int? id;
  final String? name;
  final String? type;
  final String? power;
  final String? time;

  Medicine({
    this.id,
    this.name,
    this.type,
    this.power,
    this.time,
  });

  factory Medicine.fromJson(Map<String, dynamic> json) {
    return Medicine(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      power: json['power'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'power': power,
      'time': time,
    };
  }
}
