
import 'package:json_annotation/json_annotation.dart';

part 'corona_summary.g.dart';


@JsonSerializable()
class CoronaData{

  @JsonKey(name: "Active Cases")
  final String activeCase;


  @JsonKey(name: "Country")
  final String country;




  @JsonKey(name: "Critical")
  final String crictical;



  @JsonKey(name: "New Cases")
  final String newCase;


  @JsonKey(name: "New Deaths")
  final String newDeaths;


  CoronaData({required this.country,required this.activeCase,required this.crictical,required this.newCase,required this.newDeaths});

  factory CoronaData.fromJson(Map<String, dynamic> json) => _$CoronaDataFromJson(json);



  Map<String, dynamic> toJson()=> _$CoronaDataToJson(this);

}