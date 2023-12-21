// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) =>
    TokenResponse(
      token: json['token'] as String,
      responseCode: $enumDecode(
          _$QuestionFactoryResponseCodeEnumMap, json['response_code']),
      responseMessage: json['response_message'] as String?,
    );

Map<String, dynamic> _$TokenResponseToJson(TokenResponse instance) =>
    <String, dynamic>{
      'response_code':
          _$QuestionFactoryResponseCodeEnumMap[instance.responseCode]!,
      'response_message': instance.responseMessage,
      'token': instance.token,
    };

const _$QuestionFactoryResponseCodeEnumMap = {
  QuestionFactoryResponseCode.success: 0,
  QuestionFactoryResponseCode.noResults: 1,
  QuestionFactoryResponseCode.invalidParameter: 2,
  QuestionFactoryResponseCode.tokenNotFound: 3,
  QuestionFactoryResponseCode.tokenEmptySession: 4,
};
