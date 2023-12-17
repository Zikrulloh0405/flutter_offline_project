import 'package:intl/intl.dart';

DateTime now = DateTime.now();
String time() {
  String formattedDate = DateFormat("k:mm").format(now);
  return formattedDate;
}

String fTime() {
  String formattedDate = DateFormat("EEE, MMM d").format(now);
  return formattedDate;
}
