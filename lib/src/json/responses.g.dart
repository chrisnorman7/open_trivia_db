// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) {
  return TokenResponse(
    _$enumDecode(_$ResponseCodesEnumMap, json['response_code']),
    json['response_message'] as String?,
    json['token'] as String,
  );
}

Map<String, dynamic> _$TokenResponseToJson(TokenResponse instance) =>
    <String, dynamic>{
      'response_code': _$ResponseCodesEnumMap[instance.responseCode],
      'response_message': instance.responseMessage,
      'token': instance.token,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$ResponseCodesEnumMap = {
  ResponseCodes.success: 0,
  ResponseCodes.noResults: 1,
  ResponseCodes.invalidParameter: 2,
  ResponseCodes.tokenNotFound: 3,
  ResponseCodes.tokenEmptySession: 4,
};

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    json['id'] as int,
    json['name'] as String,
  );
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

CategoryList _$CategoryListFromJson(Map<String, dynamic> json) {
  return CategoryList(
    (json['trivia_categories'] as List<dynamic>)
        .map((e) => Category.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CategoryListToJson(CategoryList instance) =>
    <String, dynamic>{
      'trivia_categories': instance.triviaCategories,
    };

CategoryQuestionCount _$CategoryQuestionCountFromJson(
    Map<String, dynamic> json) {
  return CategoryQuestionCount(
    json['total_question_count'] as int,
    json['total_easy_question_count'] as int,
    json['total_medium_question_count'] as int,
    json['total_hard_question_count'] as int,
  );
}

Map<String, dynamic> _$CategoryQuestionCountToJson(
        CategoryQuestionCount instance) =>
    <String, dynamic>{
      'total_question_count': instance.total,
      'total_easy_question_count': instance.easy,
      'total_medium_question_count': instance.medium,
      'total_hard_question_count': instance.hard,
    };

CategoryQuestionCountResponse _$CategoryQuestionCountResponseFromJson(
    Map<String, dynamic> json) {
  return CategoryQuestionCountResponse(
    json['category_id'] as int,
    CategoryQuestionCount.fromJson(
        json['category_question_count'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CategoryQuestionCountResponseToJson(
        CategoryQuestionCountResponse instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'category_question_count': instance.totals,
    };

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return Question(
    json['category'] as String,
    _$enumDecode(_$QuestionTypesEnumMap, json['type']),
    _$enumDecode(_$QuestionDifficultiesEnumMap, json['difficulty']),
    json['question'] as String,
    json['correct_answer'] as String,
    (json['incorrect_answers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'category': instance.categoryName,
      'type': _$QuestionTypesEnumMap[instance.type],
      'difficulty': _$QuestionDifficultiesEnumMap[instance.difficulty],
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
    };

const _$QuestionTypesEnumMap = {
  QuestionTypes.multiple: 'multiple',
  QuestionTypes.boolean: 'boolean',
};

const _$QuestionDifficultiesEnumMap = {
  QuestionDifficulties.easy: 'easy',
  QuestionDifficulties.medium: 'medium',
  QuestionDifficulties.hard: 'hard',
};

QuestionsResponse _$QuestionsResponseFromJson(Map<String, dynamic> json) {
  return QuestionsResponse(
    _$enumDecode(_$ResponseCodesEnumMap, json['response_code']),
    (json['results'] as List<dynamic>)
        .map((e) => Question.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QuestionsResponseToJson(QuestionsResponse instance) =>
    <String, dynamic>{
      'response_code': _$ResponseCodesEnumMap[instance.responseCode],
      'results': instance.questions,
    };
