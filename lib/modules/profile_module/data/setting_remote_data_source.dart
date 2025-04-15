import 'package:urfit/core/api/api_client.dart';
import 'package:urfit/modules/profile_module/data/model/static_page_model.dart';

import '../../../core/api/endpoints.dart';
import 'model/plan_history_model.dart';

abstract class BaseSettingRemoteDataSource {
  Future<void> contactUs({required String name, required String email, required String phone, required String message});
  Future<StaticPageModel> getStaticPage({required String key});
  Future<PlanHistoryModel> getPlanHistory();
}

class SettingRemoteDataSource  extends BaseSettingRemoteDataSource{
  final DioServices dioServices;

  SettingRemoteDataSource(this.dioServices);
  @override
  Future<void> contactUs({required String name, required String email, required String phone, required String message}) async {
    final response = await dioServices.post(EndPoints.contactUs,data: {
      "name": name,
      "email": email,
      "phone" : phone,
      "message": message,
    });
  }


  @override
  Future<PlanHistoryModel> getPlanHistory() async {
    final res = await  dioServices.get(EndPoints.getPlanHistory);
    print("response : ${res.data}" );
    return PlanHistoryModel.fromJson(res.data['data']);
  }

  @override
  Future<StaticPageModel> getStaticPage({required String key}) async {
    final res = await  dioServices.get(EndPoints.staticPages,parameter: {
      "key": key
    });
    print("response : ${res.data}" );
    return StaticPageModel.fromJson((res.data['data'] as List).first);
  }

}