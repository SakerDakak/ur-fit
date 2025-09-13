import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/data/fakers.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/modules/inuries/data/injuries_repo.dart';
import 'package:urfit/modules/inuries/data/question_model.dart';
import 'package:urfit/modules/inuries/presentaion/cubit/injuries_state.dart';

class InjuriesCubit extends Cubit<InjuriesState> {
  final InjuriesRepo _repo;
  InjuriesCubit(this._repo) : super(const InjuriesState()) {
    getQuestions();
  }

  final List<QuestionModel> _questions = [];

  Future<void> getQuestions() async {
    emit(state.copyWith(fetchStatus: RequestState.loading, questions: Fakers().questions));
    try {
      final result = await _repo.getInjuryQuestions();
      result.fold(
        (failure) => emit(state.copyWith(fetchStatus: RequestState.failure, message: failure.message, questions: [])),
        (questions) {
          _questions.clear();
          _questions.addAll(questions);
          emit(state.copyWith(fetchStatus: RequestState.success, questions: _questions));
        },
      );
    } catch (e) {
      emit(state.copyWith(fetchStatus: RequestState.failure, message: e.toString(), questions: []));
    }
  }

  Future<void> toggleInjury(int questionId, bool isYes) async {
    final newMap = Map<int, bool>.from(state.answers);
    newMap[questionId] = isYes;
    emit(state.copyWith(answers: newMap));
  }

  Future<void> sendInjuries() async {
    final answeredQuestions = _questions.where((q) => state.answers[q.id] == true).toList();
    emit(state.copyWith(sendStatus: RequestState.loading));
    try {
      final result = await _repo.updateAffectedBodyParts(answeredQuestions.map((e) => e.key.value).toList());
      result.fold(
        (failure) => emit(state.copyWith(sendStatus: RequestState.failure, message: failure.message)),
        (_) => emit(state.copyWith(sendStatus: RequestState.success)),
      );
    } catch (e) {
      emit(state.copyWith(sendStatus: RequestState.failure, message: e.toString()));
    }
  }
}
