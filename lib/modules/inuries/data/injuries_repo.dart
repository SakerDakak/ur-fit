import 'package:dartz/dartz.dart';
import 'package:urfit/core/data/api/api_client.dart';
import 'package:urfit/core/data/api/endpoints.dart';
import 'package:urfit/core/domain/error/failures.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/modules/inuries/data/question_model.dart';

class InjuriesRepo {
  final ApiClient _apiClient;

  InjuriesRepo(this._apiClient);

  Future<Either<Failure, List<QuestionModel>>> getInjuryQuestions() async {
    try {
      final result = await _apiClient.get(EndPoints.getQuestions);
      if ((result.statusCode ?? 400) < 400) {
        return Right((result.data['data'] as List).map((e) => QuestionModel.fromJson(e)).toList());
      } else {
        return Left(ServerFailure(result.data.toString()));
      }
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> updateAffectedBodyParts(List<String> parts) async {
    try {
      final result = await _apiClient.post(EndPoints.updateAffectedBodyParts, data: {'affected_body_parts': parts});
      if ((result.statusCode ?? 400) < 400) {
        return const Right(null);
      } else {
        return Left(ServerFailure(result.data.toString()));
      }
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<BodyParts>>> getAffectedBodyParts() async {
    try {
      final result = await _apiClient.get(EndPoints.getAffectedBodyParts);
      if ((result.statusCode ?? 400) < 400) {
        final data = result.data['data']['affected_body_parts'];
        if (data is! List || data.isEmpty) return const Right([]);
        return Right((data).map((e) => BodyParts.fromValue(e.toString())).toList());
      } else {
        return Left(ServerFailure(result.data.toString()));
      }
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
