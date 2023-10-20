import 'package:dartz/dartz.dart';
import 'package:flutter_siakad_app/common/constants/variables.dart';
import 'package:flutter_siakad_app/data/data_sources/auth_local_data_sources.dart';
import 'package:flutter_siakad_app/data/models/response/schedule_response_model.dart';
import 'package:http/http.dart' as http;

class ScheduleRemoteDataSource {
  Future<Either<String, ScheduleResponseModel>> getSchedule() async {
    //get user token from local
    final loginToken = await AuthLocalDataSources().getToken();

    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $loginToken',
    };

    const baseUrl = "${Variables.baseUrl}/api/schedules";

    final response = await http.get(
      Uri.parse(baseUrl),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(ScheduleResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed get Schedules');
    }
  }
}
