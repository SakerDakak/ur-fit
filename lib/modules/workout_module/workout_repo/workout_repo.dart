import 'package:dartz/dartz.dart';
import 'package:urfit/core/domain/error/failures.dart';
import 'package:urfit/modules/workout_module/data/model/workout_model.dart';

import '../data/workout_remote_datasource.dart';

class WorkoutRepo {
  final WorkoutRemoteDataSource workoutRemoteDataSource;

  WorkoutRepo(this.workoutRemoteDataSource);
  Future<Either<Failure, List<WorkoutPlan>>> getWorkoutPlan() async {
    try {
      final result = await workoutRemoteDataSource.getWorkoutPlan();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String>> generateWorkOutPlan({required String endDate}) async {
    try {
      final result = await workoutRemoteDataSource.generateWorkoutPlan(endDate: endDate);
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> calculateExercise(
      {required int exercisePlanId, required num calories, required num times, required num sets}) async {
    try {
      final result = await workoutRemoteDataSource.calculateExercise(
          exercisePlanId: exercisePlanId, calories: calories, times: times, sets: sets);
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
