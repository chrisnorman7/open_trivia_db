/// Provides the [QuestionFactory] class.
import 'package:dio/dio.dart';

import '../open_trivia_db.dart';
import 'enumerations.dart';
import 'errors.dart';
import 'json/responses.dart';

/// A factory for getting questions.
class QuestionFactory {
  /// Create an instance.
  QuestionFactory(this.http, {String? token}) : _token = token;

  /// The HTTP session to use.
  final Dio http;

  /// The token to use in requests.
  String? _token;

  /// Get the token.
  String? get token => _token;

  /// Check that a response was valid.
  void _check(ResponseCodes code) {
    switch (code) {
      case ResponseCodes.success:
        return;
      default:
        throw ResponseError(code);
    }
  }

  /// Get a new token.
  ///
  /// This method must be called before [resetToken].
  Future<void> initToken() async {
    final r = await http.get<Map<String, dynamic>>(
        'https://opentdb.com/api_token.php?command=request');
    final tokenResponse =
        TokenResponse.fromJson(r.data as Map<String, dynamic>);
    _check(tokenResponse.responseCode);
    _token = tokenResponse.token;
  }

  /// Reset the token.
  ///
  /// If [token] is `null`, [ResponseError] will be thrown.
  Future<void> resetToken() async {
    if (token == null) {
      throw ResponseError(ResponseCodes.tokenNotFound);
    }
    final r = await http.get<Map<String, dynamic>>(
        'https://opentdb.com/api_token.php?command=reset&token=$token');
    final tokenResponse =
        TokenResponse.fromJson(r.data as Map<String, dynamic>);
    _check(tokenResponse.responseCode);
    _token = tokenResponse.token;
  }

  /// Get all categories in the database.
  Future<List<Category>> getCategories() async {
    final r = await http
        .get<Map<String, dynamic>>('https://opentdb.com/api_category.php');
    final categoryList = CategoryList.fromJson(r.data as Map<String, dynamic>);
    return categoryList.triviaCategories;
  }

  /// Return the number of questions in a particular category.
  Future<CategoryQuestionCount> getCategoryQuestionCount(
      Category category) async {
    final r = await http.get<Map<String, dynamic>>(
        'https://opentdb.com/api_count.php?category=${category.id}');
    final countResponse =
        CategoryQuestionCountResponse.fromJson(r.data as Map<String, dynamic>);
    return countResponse.totals;
  }

  /// Get a list of questions.
  Future<List<Question>> getQuestions(
      {int amount = 10,
      Category? category,
      QuestionDifficulties? difficulty,
      QuestionTypes? type}) async {
    var url = 'https://opentdb.com/api.php?amount=$amount';
    if (category != null) {
      url += '&category=${category.id}';
    }
    if (difficulty != null) {
      var d = difficulty.toString();
      d = d.substring(d.lastIndexOf('.') + 1);
      url += '&difficulty=$d';
    }
    if (type != null) {
      var t = type.toString();
      t = t.substring(t.lastIndexOf('.') + 1);
      url += '&type=$t';
    }
    final r = await http.get<Map<String, dynamic>>(url);
    final questionsResponse =
        QuestionsResponse.fromJson(r.data as Map<String, dynamic>);
    _check(questionsResponse.responseCode);
    return questionsResponse.questions;
  }
}
