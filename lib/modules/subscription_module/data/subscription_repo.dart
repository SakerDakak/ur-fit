import 'package:dartz/dartz.dart';
import 'package:urfit/modules/subscription_module/data/subscription_remote_datasource.dart';

import '../../../core/domain/error/failures.dart';
import 'models/discount_value_model.dart';
import 'models/package_model.dart';

class SubscriptionRepo {
  final SubscriptionRemoteDataSource dataSource;

  SubscriptionRepo(this.dataSource);

  Future<Either<Failure, List<PackageModel>>> getPackages({PlanType? planType}) async {
    try {
      var result = await dataSource.getPackages(planType: planType);

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String?>> getPaymentUrl({required int packageId, String? couponeCode}) async {
    try {
      var result = await dataSource.getPaymentUrl(packageId: packageId, couponeCode: couponeCode);

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String?>> paymentResponse({required String url}) async {
    try {
      var result = await dataSource.paymentResponse(url: url);

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, DiscountValueModel?>> getDiscountValue({required num price, required String coupon}) async {
    try {
      var result = await dataSource.getDiscountValue(price: price, coupon: coupon);

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
