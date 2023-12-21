// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionsResponse _$QuestionsResponseFromJson(Map<String, dynamic> json) =>
    QuestionsResponse(
      responseCode: $enumDecode(_$ResponseCodesEnumMap, json['response_code']),
      questions: (json['results'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionsResponseToJson(QuestionsResponse instance) =>
    <String, dynamic>{
      'response_code': _$ResponseCodesEnumMap[instance.responseCode]!,
      'results': instance.questions,
    };

const _$ResponseCodesEnumMap = {
  ResponseCodes.success: 0,
  ResponseCodes.noResults: 1,
  ResponseCodes.invalidParameter: 2,
  ResponseCodes.tokenNotFound: 3,
  ResponseCodes.tokenEmptySession: 4,
};
