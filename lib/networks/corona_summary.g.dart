// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corona_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoronaData _$CoronaDataFromJson(Map<String, dynamic> json) {
  return CoronaData(
    country: json['Country'] as String,
    activeCase: json['Active Cases'] as String,
    crictical: json['Critical'] as String,
    newCase: json['New Cases'] as String,
    newDeaths: json[' New Deaths'] as String,
  );
}

Map<String, dynamic> _$CoronaDataToJson(CoronaData instance) =>
    <String, dynamic>{
      'Active Cases': instance.activeCase,
      'Country': instance.country,
      'Critical': instance.crictical,
      'New Cases': instance.newCase,
      ' New Deaths': instance.newDeaths,
    };
