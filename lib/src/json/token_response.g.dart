// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) =>
    TokenResponse(
      token: json['token'] as String,
      responseCode: $enumDecode(_$ResponseCodesEnumMap, json['response_code']),
      responseMessage: json['response_message'] as String?,
    );

Map<String, dynamic> _$TokenResponseToJson(TokenResponse instance) =>
    <String, dynamic>{
      'response_code': _$ResponseCodesEnumMap[instance.responseCode]!,
      'response_message': instance.responseMessage,
      'token': instance.token,
    };

const _$ResponseCodesEnumMap = {
  ResponseCodes.success: 0,
  ResponseCodes.noResults: 1,
  ResponseCodes.invalidParameter: 2,
  ResponseCodes.tokenNotFound: 3,
  ResponseCodes.tokenEmptySession: 4,
};
