class TicketModel {
  final String id;
  final DateTime date;

  TicketModel({required this.id, required this.date});

  factory TicketModel.fromJson(Map<String, dynamic> json) {
    return TicketModel(
      id: json['_id'] as String,
      date: DateTime.parse(json['date'] as String),
    );
  }
}
