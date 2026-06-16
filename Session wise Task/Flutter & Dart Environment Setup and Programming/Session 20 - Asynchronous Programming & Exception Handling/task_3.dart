import 'dart:io';

void main() {
  // 3.
  // Write a Dart function getMovieTickets() that throws an exception if the number of tickets requested is more than 6,
  // otherwise returns 'Tickets Booked'. Use try-catch to handle the exception and
  // print an error message if too many tickets are requested.
  // <br><br><em><strong>Hint:</strong> Use throw Exception('Cannot book more than 6 tickets'); inside your function.</em>

  stdout.write("How many tickets you want to book ? : ");
  int noOfTicket = int.parse(stdin.readLineSync().toString());

  try {
    String bookingStatus = getMovieTickets(noOfTicket: noOfTicket);
    print(bookingStatus);
  } catch (e) {
    print(e);
  }
}

String getMovieTickets({required int noOfTicket}) =>
    noOfTicket <= 6 ? "Tickets Booked" : throw Exception("Can't book more than 6 tickets");

