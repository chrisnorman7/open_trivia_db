// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_category_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionCategoryList _$QuestionCategoryListFromJson(
        Map<String, dynamic> json) =>
    QuestionCategoryList(
      (json['trivia_categories'] as List<dynamic>)
          .map((e) => QuestionCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionCategoryListToJson(
        QuestionCategoryList instance) =>
    <String, dynamic>{
      'trivia_categories': instance.triviaCategories,
    };
