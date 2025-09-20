import 'package:urfit/modules/workout_module/data/model/workout_model.dart';

import '../../../core/data/api/api_client.dart';
import '../../../core/data/api/endpoints.dart';

class WorkoutRemoteDataSource {
  final ApiClient dioServices;
  WorkoutRemoteDataSource(this.dioServices);

  Future<String> generateWorkoutPlan({required String endDate}) async {
    final Map<String, dynamic> data = {
      "end_date": endDate,
    };

    print("generateWorkout :$data");
    final response =
        await dioServices.post(EndPoints.getWorkoutPlan, data: data);

    return response.data['data'] as String;
  }

  Future<List<WorkoutPlan>> getWorkoutPlan() async {
    final response = await dioServices.get(EndPoints.getWorkoutPlan);
    return (response.data['data'] as List)
        .map((e) => WorkoutPlan.fromJson(e))
        .toList();
  }

  Future<void> calculateExercise(
      {required int exercisePlanId,
      required num calories,
      required num times,
      required num sets}) async {
    await dioServices.post(EndPoints.calculateExercise, data: {
      'exercise_plan_id': exercisePlanId,
      "calories": calories,
      "times": times,
      "sets": sets
    });
  }
}
