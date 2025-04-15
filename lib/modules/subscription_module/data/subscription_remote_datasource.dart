import 'package:urfit/core/error/exceptions.dart';
import 'package:urfit/core/error/failures.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/endpoints.dart';

abstract class BaseSubscriptionRemoteDataSource {
  Future<List<PackageModel>> getPackages({required PlanType planType});
  Future<String> getPaymentUrl({required int packageId});
  Future<String?> paymentResponse({required String url});
}


class SubscriptionRemoteDataSource extends BaseSubscriptionRemoteDataSource {
  final DioServices dioServices;

  SubscriptionRemoteDataSource(this.dioServices);


  @override
  Future<List<PackageModel>> getPackages({required PlanType planType}) async {
    final res = await dioServices.get(
      EndPoints.packages(planType),
    );

    final packages = (res.data['data'] as List).map((e) => PackageModel.fromJson(e)).toList();

    return packages;
  }

  @override
  Future<String> getPaymentUrl({required int packageId}) async {
    final res = await dioServices.get(
      EndPoints.executePayment,
      parameter: {'package_id' : packageId},
    );
    print("payment url ${res.data}");
    return res.data['url'];
  }

  @override
  Future<String?> paymentResponse({required String url}) async {
    final path = url.split(EndPoints.baseUrl).last;
    final res = await dioServices.get(
      path,
    );
      return res.data['status'];
  }

}