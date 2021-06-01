// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrofit_network.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoronaResponse _$CoronaResponseFromJson(Map<String, dynamic> json) {
  return CoronaResponse(
    coronadata: CoronaData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoronaResponseToJson(CoronaResponse instance) =>
    <String, dynamic>{
      'data': instance.coronadata,
    };
