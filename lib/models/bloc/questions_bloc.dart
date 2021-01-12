import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'questions_event.dart';
part 'questions_state.dart';

class QuestionsBloc extends Bloc<QuestionsEvent, QuestionsState> {
  QuestionsBloc()
      : super(
          QuestionsState(
            questions: [],
          ),
        );

  @override
  Stream<QuestionsState> mapEventToState(
    QuestionsEvent event,
  ) async* {
    const String url = "http://192.168.42.210:8080/api";
    print(url);
    print(event);
    if (event is FetchQuestions) {
      print("Hello");
      final response = await http.get(url);
      print("response: ");
      print(response);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      print("extractedData: ");
      print(extractedData);

      List<StackOverflowQuestionData> loadedQuestions = [];
      for (var question in extractedData["questions"]) {
        loadedQuestions.add(
          StackOverflowQuestionData(
            question: question["question"],
            views: question["views"],
            voteCount: question["voteCount"],
            tags: question["tags"],
          ),
        );
      }

      yield QuestionsState(
        questions: loadedQuestions,
      );
    }
  }
}
