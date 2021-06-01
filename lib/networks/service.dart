

import 'package:dio/dio.dart';
import 'package:flutter_app/networks/retrofit_network.dart';
import 'package:retrofit/http.dart';


part 'service.g.dart';

@RestApi(baseUrl:"https://worldometers.p.rapidapi.com/api/coronavirus/country")

abstract class ApiService{

  factory ApiService(Dio dio, { required String baseurl}){
    dio.options = BaseOptions(
        receiveTimeout: 30000,
        connectTimeout: 30000,
      headers: {
        'x-rapidapi-key':'757d02bda2msh9c9ccec72b99b9dp11907djsn658419b200ca',
        'Content-Type': 'application/json',

      }
    );

    return _ApiService(dio, baseUrl:baseurl);

  }





  @GET('/Nepal')
  Future<CoronaResponse> coronaResponse ();



}