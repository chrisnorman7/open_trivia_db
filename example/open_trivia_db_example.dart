import 'dart:io';

import 'package:dio/dio.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:open_trivia_db/open_trivia_db.dart';

Future<void> main() async {
  final http = Dio();
  final factory = QuestionFactory(http);
  final categories = await factory.getCategories();
  final category = categories
      .firstWhere((element) => element.name.toLowerCase().contains('music'));
  await factory.getCategoryQuestionCount(categories.first);
  final unescape = HtmlUnescape();
  final questions = await factory.getQuestions(amount: 20, category: category);
  final f = File('questions.txt');
  final writer = f.openWrite();
  var i = 1;
  for (final q in questions) {
    writer.writeln('$i. ${unescape.convert(q.question)}');
    final answers = q.answers..shuffle();
    for (final a in answers) {
      writer
          .writeln('${a == q.correctAnswer ? "* " : ""}${unescape.convert(a)}');
    }
    writer.writeln();
    i++;
  }
  await writer.done;
}
