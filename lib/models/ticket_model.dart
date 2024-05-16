class TicketModel {
  final String id;
  final DateTime date;

  TicketModel({required this.id, required this.date});

  factory TicketModel.fromJson(Map<String, dynamic> json) {
    return TicketModel(
      id: json['_id'],
      date: DateTime.parse(json['date']),
    );
  }
}
// {
//     "_id": "66398540f58b05fa8535332e",
//     "date": "2001-05-06T21:00:00.000Z",
//     "__v": 0
//   },