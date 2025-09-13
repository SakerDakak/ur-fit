import 'package:urfit/core/data/api/api_client.dart';
import 'package:urfit/modules/profile_module/data/model/static_page_model.dart';

import '../../../core/data/api/endpoints.dart';
import 'model/plan_history_model.dart';

class SettingRemoteDataSource {
  final ApiClient dioServices;

  SettingRemoteDataSource(this.dioServices);
  Future<void> contactUs(
      {required String name, required String email, required String phone, required String message}) async {
    await dioServices.post(EndPoints.contactUs, data: {
      "name": name,
      "email": email,
      "phone": phone,
      "message": message,
    });
  }

  Future<PlanHistoryModel> getPlanHistory() async {
    final res = await dioServices.get(EndPoints.getPlanHistory);
    print("response : ${res.data}");
    return PlanHistoryModel.fromJson(res.data['data']);
  }

  Future<StaticPageModel> getStaticPage({required String key}) async {
    final res = await dioServices.get(EndPoints.staticPages, parameter: {"key": key});
    print("response : ${res.data}");
    return StaticPageModel.fromJson((res.data['data'] as List).first);
  }

  Future<String> deleteAccount() async {
    final res = await dioServices.get(EndPoints.deleteAccount);
    print("response : ${res.data}");
    return res.data['data']?.toString() ?? res.data['message'].toString();
  }
}
