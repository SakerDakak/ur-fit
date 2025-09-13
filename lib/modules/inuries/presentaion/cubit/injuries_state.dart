import 'package:equatable/equatable.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/modules/inuries/data/question_model.dart';

class InjuriesState extends Equatable {
  final RequestState fetchStatus;
  final RequestState sendStatus;
  final String? message;
  final List<QuestionModel> questions;
  final Map<int, bool?> answers;

  const InjuriesState({
    this.fetchStatus = RequestState.initial,
    this.sendStatus = RequestState.initial,
    this.message,
    this.questions = const [],
    this.answers = const {},
  });

  InjuriesState copyWith({
    RequestState? fetchStatus,
    RequestState? sendStatus,
    String? message,
    List<QuestionModel>? questions,
    Map<int, bool?>? answers,
  }) {
    return InjuriesState(
      fetchStatus: fetchStatus ?? this.fetchStatus,
      sendStatus: sendStatus ?? this.sendStatus,
      message: message ?? this.message,
      questions: questions ?? this.questions,
      answers: answers ?? this.answers,
    );
  }

  @override
  List<Object?> get props => [fetchStatus, message, questions, answers, fetchStatus, sendStatus];
}
