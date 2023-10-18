import 'package:intl/intl.dart';

String getIndonesianTime(DateTime time) {
  String timeZoneName = 'Asia/Jakarta';
  final jakartaTime = time.toLocal();
  final jakartaTimeZone = jakartaTime.timeZoneName;

  if (jakartaTimeZone != timeZoneName) {
    timeZoneName = 'Asia/Makassar';
  }

  final indonesianTime = DateFormat('HH:mm:ss').format(time.toLocal());
  final localTimeZone = jakartaTimeZone == 'Asia/Jakarta' ? 'WIB' : 'WITA';

  return '$indonesianTime $localTimeZone';
}
