import 'package:dartz/dartz.dart';
import 'package:flutter_siakad_app/core.dart';
import 'package:flutter_siakad_app/data/models/response/khs_response_model.dart';
import 'package:http/http.dart' as http;

class KhsRemoteDataSource {
  Future<Either<String, KhsResponseModel>> getKhs() async {
    //get user token from local
    final loginToken = await AuthLocalDataSources().getToken();

    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $loginToken',
    };

    const baseUrl = "${Variables.baseUrl}/api/khs";

    final response = await http.get(
      Uri.parse(baseUrl),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(KhsResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed get Student Khs');
    }
  }
}
