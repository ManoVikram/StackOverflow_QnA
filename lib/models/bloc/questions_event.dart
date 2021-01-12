part of 'questions_bloc.dart';

abstract class QuestionsEvent {
  const QuestionsEvent();

  @override
  List<Object> get props => [];
}

class FetchQuestions extends QuestionsEvent {
  const FetchQuestions();
}
