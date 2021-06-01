import 'package:dio/dio.dart' as dio;
import 'package:flutter_app/networks/service.dart';

class CoronaProvider {

  updateCovid() async {

    ApiService _apiService = ApiService(dio.Dio(), baseurl: 'https://worldometers.p.rapidapi.com/api/coronavirus/country');
    var response = await _apiService.coronaResponse();

    print('${response.toJson()}');


  }



}