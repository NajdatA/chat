// GENERATED CODE - DO NOT MODIFY BY HAND

part of payload_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayloadModel<T> _$PayloadModelFromJson<T>(Map<String, dynamic> json) {
  return PayloadModel<T>(
    _dataFromJson(json['Private_Consultations'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PayloadModelToJson<T>(PayloadModel<T> instance) =>
    <String, dynamic>{
      'Private_Consultations': instance.data,
    };
