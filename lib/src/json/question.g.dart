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
      type: $enumDecode(_$QuestionTypeEnumMap, json['type']),
      difficulty: $enumDecode(_$QuestionDifficultyEnumMap, json['difficulty']),
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'category': instance.categoryName,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'difficulty': _$QuestionDifficultyEnumMap[instance.difficulty]!,
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.multiple: 'multiple',
  QuestionType.boolean: 'boolean',
};

const _$QuestionDifficultyEnumMap = {
  QuestionDifficulty.easy: 'easy',
  QuestionDifficulty.medium: 'medium',
  QuestionDifficulty.hard: 'hard',
};
