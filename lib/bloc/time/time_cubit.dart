import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/common/constants/local_time.dart';

class TimeCubit extends Cubit<DateTime> {
  TimeCubit() : super(DateTime.now()) {
    _startClock();
  }

  void _startClock() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      emit(DateTime.now());
    });
  }

  String getCurrentLocalTime() {
    return getIndonesianTime(state);
  }
}
