// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_response_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseModel<T> _$BaseResponseModelFromJson<T>(Map<String, dynamic> json) {
  return BaseResponseModel<T>(
    status: json['status'] as String,
    message: json['message'] as String,
    payload: _dataFromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BaseResponseModelToJson<T>(
        BaseResponseModel<T> instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'payload': _dataToJson(instance.payload),
    };
