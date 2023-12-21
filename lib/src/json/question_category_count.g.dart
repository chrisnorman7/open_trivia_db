// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_category_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionCategoryCount _$QuestionCategoryCountFromJson(
        Map<String, dynamic> json) =>
    QuestionCategoryCount(
      total: json['total_question_count'] as int,
      easy: json['total_easy_question_count'] as int,
      medium: json['total_medium_question_count'] as int,
      hard: json['total_hard_question_count'] as int,
    );

Map<String, dynamic> _$QuestionCategoryCountToJson(
        QuestionCategoryCount instance) =>
    <String, dynamic>{
      'total_question_count': instance.total,
      'total_easy_question_count': instance.easy,
      'total_medium_question_count': instance.medium,
      'total_hard_question_count': instance.hard,
    };
