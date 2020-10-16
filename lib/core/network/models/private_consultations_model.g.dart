// GENERATED CODE - DO NOT MODIFY BY HAND

part of private_consultations_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrivateConsultationsModel<T> _$PrivateConsultationsModelFromJson<T>(
    Map<String, dynamic> json) {
  return PrivateConsultationsModel<T>(
    _Converter<T>().fromJson(json['private_consultations']),
  );
}

Map<String, dynamic> _$PrivateConsultationsModelToJson<T>(
        PrivateConsultationsModel<T> instance) =>
    <String, dynamic>{
      'private_consultations': _Converter<T>().toJson(instance.private),
    };
