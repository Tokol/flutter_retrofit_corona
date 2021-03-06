import 'dart:convert';



import 'package:http/http.dart' as http;

import 'end_points.dart';

class Network {
  String country;
  Network({required this.country});

  Future<dynamic> getCoronaSummary() async {
    // ignore: unnecessary_null_comparison
    if (country == null) {
      country = "Nepal";
    }

    try {
      http.Response response;

      response = await http.get(requestSummary(country),


          headers: {"x-rapidapi-key":"757d02bda2msh9c9ccec72b99b9dp11907djsn658419b200ca"});

      var result = json.decode(response.body);

      print(result);


       String totalActiveCase = result["data"]["Active Cases"];
       String totalPostiveCase = result["data"]["Total Cases"];
       String totalRecovered = result["data"]["Total Recovered"];
       String totalDeaths = result["data"]["Total Deaths"];
       String newPositiveCase = result["data"]["New Cases"];
       String newRecovered = result["data"]["New Recovered"];
       String newDeaths = result["data"]["New Deaths"];
       String updateTime = result["last_update"];




      return result;
    } catch (e) {
      print('somewthing went wrong');
    }
  }

  Future<dynamic> getHospitalList() async {
    try {
      http.Response response;
      response = await http.get(requestNepal(hospitalEndpoints));

      var result = json.decode(response.body);
      return result;

    } catch (e) {
      print('somewthing went wrong');
    }
  }

//  Future<List<CovidMyths>> getmyths() async {
//    try {
//      http.Response response;
//      response = await http.get(requestNepal(mythEndpoints));
//
//      var result = json.decode(response.body);
//
//      var covidMythsData = result["data"];
//
//      List<CovidMyths> covidMyths = [];
//
//
//      for(int i=0; i<covidMythsData.length; i++){
//
//        covidMyths.add(CovidMyths(
//
//              mythEnglish: covidMythsData[i]["myth"],
//              mythNep: covidMythsData[i]["myth_np"],
//              realityEnglish: covidMythsData[i]["reality"],
//              realityNep: covidMythsData[i]["reality_np"],
//              newtworkImage: covidMythsData[i]["image_url"]
//
//        ));
//
//
//      }
//
//
//      return covidMyths;
//    } catch (e) {
//      print('somewthing went wrong');
//    }
//  }
}
