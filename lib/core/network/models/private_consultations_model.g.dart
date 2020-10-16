// GENERATED CODE - DO NOT MODIFY BY HAND

part of private_consultations_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrivateConsultationsModel<T> _$PrivateConsultationsModelFromJson<T>(
    Map<String, dynamic> json) {
  return PrivateConsultationsModel<T>(
    (json['data'] as List)?.map(_Converter<T>().fromJson)?.toList(),
  );
}

Map<String, dynamic> _$PrivateConsultationsModelToJson<T>(
        PrivateConsultationsModel<T> instance) =>
    <String, dynamic>{
      'data': instance.private?.map(_Converter<T>().toJson)?.toList(),
    };
