import 'package:dartz/dartz.dart';
import 'package:urfit/core/error/failures.dart';
import 'package:urfit/modules/workout_module/data/model/workout_model.dart';

import '../data/workout_remote_datasource.dart';

abstract class BaseWorkoutRepo {
  Future<Either<Failure ,String>> generateWorkOutPlan({required String endDate});

  Future<Either<Failure ,List<WorkoutPlan>>> getWorkoutPlan();
  Future<Either<Failure ,void>> calculateExercise({required int exercisePlanId,required num calories , required num times , required num sets});

}

class WorkoutRepo extends BaseWorkoutRepo{
  final BaseWorkoutRemoteDataSource workoutRemoteDataSource;

  WorkoutRepo(this.workoutRemoteDataSource);
  @override
  Future<Either<Failure ,List<WorkoutPlan>>>getWorkoutPlan() async {
    try{
    final result = await workoutRemoteDataSource.getWorkoutPlan();
    return Right(result);
    }catch(e){
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> generateWorkOutPlan({required String endDate}) async {
    try {
      final result = await workoutRemoteDataSource.generateWorkoutPlan(
          endDate: endDate);
      return Right(result);
    }catch (e){
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> calculateExercise({required int exercisePlanId, required num calories, required num times, required num sets}) async {
    try {
      final result = await workoutRemoteDataSource.calculateExercise(exercisePlanId: exercisePlanId, calories: calories, times: times, sets: sets);
      return Right(result);
    }catch (e){
      return Left(ServerFailure(e.toString()));
    }
  }

}
