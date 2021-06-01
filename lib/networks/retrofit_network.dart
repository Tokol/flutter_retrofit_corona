
import 'package:flutter_app/networks/corona_summary.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrofit_network.g.dart';

@JsonSerializable()
class CoronaResponse{

@JsonKey(name:"data")
final CoronaData coronadata;


CoronaResponse({required this.coronadata});

factory CoronaResponse.fromJson(Map<String, dynamic> json) => _$CoronaResponseFromJson(json);



Map<String, dynamic> toJson()=> _$CoronaResponseToJson(this);


}