import 'package:dio/dio.dart';

import '../models/ticket_model.dart';

class BookingService {
  final Dio _dio = Dio();
  String baseUrl = 'http://192.168.1.5:8003/api';
  bookTicket(String numOfTickets, String date) async {
    Response response = await _dio.post(
      '$baseUrl/bookings',
      data: {"numberOfTickets": numOfTickets, "date": date},
    );
    print(response.data);
    //return response.data;
  }

  Future<List<TicketModel>> fetchTickets() async {
    try {
      final Response response = await _dio.get('$baseUrl/bookings');
      final List<dynamic> data = response.data;
      List<TicketModel> tickets = List.generate(data.length, (index) => TicketModel.fromJson(data[index]));
      print(tickets);
      return tickets;
    } on DioException catch (error) {
      throw Exception('Failed to fetch Tickets: ${error.message}');
    }
  }
}
