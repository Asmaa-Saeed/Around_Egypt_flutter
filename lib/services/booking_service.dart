import 'package:dio/dio.dart';

class BookingService {
  final Dio _dio = Dio();
  String baseUrl = 'http://192.168.1.5:8003/api';
  bookTicket(String numOfTickets, String date) async {
    Response response = await _dio.post(
      '$baseUrl/bookings',
      data: {"numberOfTickets": numOfTickets, "date": date},
    );
    print(response.data);
    return response.data;
  }
}
// we will try it before integration with ui // i inderstaaaaaaaaaaaaaaaaaaaaaaaaaaand the probleeeeeeem