import 'dart:io';

import 'package:dio/dio.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:open_trivia_db/open_trivia_db.dart';

/// Print a line of [text].
void _print(final dynamic text, {final String end = '\n'}) {
  stdout.write('$text$end');
}

Future<void> main() async {
  final http = Dio();
  final factory = QuestionFactory(http);
  final categories = await factory.getCategories();
  _print('Categories:');
  _print(categories.map((final e) => e.name).join('\n'));
  final category = categories.firstWhere(
    (final element) => element.name.toLowerCase().contains('music'),
  );
  _print('Found category ${category.name}.');
  final count = await factory.getCategoryQuestionCount(categories.first);
  _print(
    'Number of questions in the ${category.name} category: ${count.total}.',
  );
  final questions = await factory.getQuestions(
    amount: 20,
    category: category,
    difficulty: QuestionDifficulty.easy,
    type: QuestionType.multiple,
  );
  _print('Retrieved ${questions.length} questions.');
  final unescape = HtmlUnescape();
  for (var i = 0; i < questions.length; i++) {
    _print('Question ${i + 1}:');
    final question = questions[i];
    _print(unescape.convert(question.question));
    final answers = <String>[...question.answers]..shuffle();
    for (var j = 0; j < (answers.length + 1); j++) {
      if (j == 0) {
        _print('0: exit');
      } else {
        _print('$j: ${unescape.convert(answers[j - 1])}');
      }
    }
    _print('Answer: ', end: '');
    final response = int.tryParse(stdin.readLineSync()?.trim() ?? '');
    if (response == null || response == 0) {
      _print('Goodbye.');
      exit(0);
    } else {
      try {
        final answer = answers[response - 1];
        final correct = question.correctAnswer;
        if (correct == answer) {
          _print('Correct!');
        } else {
          _print('Incorrect! The correct answer was: $correct.');
        }
        // ignore: avoid_catching_errors
      } on RangeError {
        _print('There are only ${answers.length} answers, not $response.');
      }
    }
  }
}
