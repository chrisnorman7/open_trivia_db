// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionsResponse _$QuestionsResponseFromJson(Map<String, dynamic> json) =>
    QuestionsResponse(
      responseCode: $enumDecode(
          _$QuestionFactoryResponseCodeEnumMap, json['response_code']),
      questions: (json['results'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionsResponseToJson(QuestionsResponse instance) =>
    <String, dynamic>{
      'response_code':
          _$QuestionFactoryResponseCodeEnumMap[instance.responseCode]!,
      'results': instance.questions,
    };

const _$QuestionFactoryResponseCodeEnumMap = {
  QuestionFactoryResponseCode.success: 0,
  QuestionFactoryResponseCode.noResults: 1,
  QuestionFactoryResponseCode.invalidParameter: 2,
  QuestionFactoryResponseCode.tokenNotFound: 3,
  QuestionFactoryResponseCode.tokenEmptySession: 4,
};
