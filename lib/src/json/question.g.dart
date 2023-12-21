// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      categoryName: json['category'] as String,
      question: json['question'] as String,
      correctAnswer: json['correct_answer'] as String,
      incorrectAnswers: (json['incorrect_answers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      type: $enumDecode(_$QuestionTypesEnumMap, json['type']),
      difficulty:
          $enumDecode(_$QuestionDifficultiesEnumMap, json['difficulty']),
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'category': instance.categoryName,
      'type': _$QuestionTypesEnumMap[instance.type]!,
      'difficulty': _$QuestionDifficultiesEnumMap[instance.difficulty]!,
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
