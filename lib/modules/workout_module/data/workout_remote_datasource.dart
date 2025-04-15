import 'package:urfit/modules/workout_module/data/model/workout_model.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/endpoints.dart';

abstract class BaseWorkoutRemoteDataSource {
  Future<WorkoutPlan> generateWorkoutPlan({required String endDate,});
  Future<List<WorkoutPlan>> getWorkoutPlan();
  Future<void> calculateExercise({required int exercisePlanId,required num calories , required num times , required num sets});

}

class WorkoutRemoteDataSource extends BaseWorkoutRemoteDataSource {
  final DioServices dioServices;
  WorkoutRemoteDataSource(this.dioServices);


  @override
  Future<WorkoutPlan> generateWorkoutPlan({required String endDate}) async {
    Map<String,dynamic> data = {
      "end_date": endDate,
    };

    print("generateWorkout :${data}");
    final response = await dioServices.post(EndPoints.getWorkoutPlan,data:data );

    return WorkoutPlan.fromJson((response.data['data'] as List).first);
  }

  @override
  Future<List<WorkoutPlan>> getWorkoutPlan() async {
    final response = await dioServices.get(EndPoints.getWorkoutPlan);
    return (response.data['data'] as List).map((e) => WorkoutPlan.fromJson(e)).toList();
  }

  @override
  Future<void> calculateExercise({required int exercisePlanId, required num calories, required num times, required num sets}) async {
    final response = await dioServices.post(EndPoints.calculateExercise,data: { 'exercise_plan_id' :exercisePlanId,"calories" : calories , "times" : times , "sets" : sets});

  }


}