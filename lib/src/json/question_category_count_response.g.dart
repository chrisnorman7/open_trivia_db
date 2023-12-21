// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_category_count_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryQuestionCountResponse _$CategoryQuestionCountResponseFromJson(
        Map<String, dynamic> json) =>
    CategoryQuestionCountResponse(
      categoryId: json['category_id'] as int,
      totals: CategoryQuestionCount.fromJson(
          json['category_question_count'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryQuestionCountResponseToJson(
        CategoryQuestionCountResponse instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'category_question_count': instance.totals,
    };
