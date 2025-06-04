import 'package:urfit/core/error/exceptions.dart';
import 'package:urfit/core/error/failures.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/endpoints.dart';
import 'models/discount_value_model.dart';

abstract class BaseSubscriptionRemoteDataSource {
  Future<List<PackageModel>> getPackages({ PlanType? planType});
  Future<String?> getPaymentUrl({required int packageId , String? couponeCode});
  Future<String?> paymentResponse({required String url});
  Future<DiscountValueModel?> getDiscountValue({required num price,required String coupon});
}


class SubscriptionRemoteDataSource extends BaseSubscriptionRemoteDataSource {
  final DioServices dioServices;

  SubscriptionRemoteDataSource(this.dioServices);


  @override
  Future<List<PackageModel>> getPackages({ PlanType? planType}) async {
    final res = await dioServices.get(
      EndPoints.packages(planType),
    );

    final packages = (res.data['data'] as List).map((e) => PackageModel.fromJson(e)).toList();

    return packages;
  }

  @override
  Future<String?> getPaymentUrl({required int packageId , String? couponeCode}) async {
    final res = await dioServices.get(
      EndPoints.executePayment,
      parameter: {'package_id' : packageId ,  'coupon_code' : couponeCode},
    );
    print("payment url ${res.data}");
    if((res.data as Map<String,dynamic>).containsKey("url")) {
      return res.data['url'];
    }else{
      return null;
    }
  }

  @override
  Future<String?> paymentResponse({required String url}) async {
    final path = url.split(EndPoints.baseUrl).last;
    final res = await dioServices.get(
      path,
    );
      return res.data['status'];
  }

  @override
  Future<DiscountValueModel?> getDiscountValue({required num price,required String coupon}) async {
    final res = await dioServices.get(
      EndPoints.discountValue,
      parameter: {
        'price': price,
        'coupon_code': coupon,
      },
    );

    return DiscountValueModel.fromJson(res.data['data']);
  }


}