part of 'questions_bloc.dart';

class StackOverflowQuestionData {
  final String question;
  final String views;
  final String voteCount;
  final List<dynamic> tags;

  StackOverflowQuestionData({
    @required this.question,
    @required this.views,
    @required this.voteCount,
    @required this.tags,
  });
}

class QuestionsState {
  final List<StackOverflowQuestionData> questions;

  QuestionsState({
    this.questions,
  });

  @override
  List<Object> get props => [questions];
}
