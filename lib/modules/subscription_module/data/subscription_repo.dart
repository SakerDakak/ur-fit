import 'package:dartz/dartz.dart';
import 'package:urfit/modules/auth_module/data/authentication/authentication_remote_datasource.dart';
import 'package:urfit/modules/subscription_module/data/subscription_remote_datasource.dart';

import '../../../core/error/failures.dart';
import 'models/package_model.dart';

abstract class BaseSubscriptionRepo {
  Future<Either<Failure, List<PackageModel>>> getPackages({required PlanType planType});
  Future<Either<Failure,String>> getPaymentUrl({required int packageId});
  Future<Either<Failure,String?>> paymentResponse({required String url});
}

class SubscriptionRepo extends BaseSubscriptionRepo {
  final BaseSubscriptionRemoteDataSource dataSource;

  SubscriptionRepo(this.dataSource);


  @override
  Future<Either<Failure, List<PackageModel>>> getPackages({required PlanType planType}) async {
    try {
      var result = await dataSource.getPackages(planType: planType);

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }

  }

  @override
  Future<Either<Failure, String>> getPaymentUrl({required int packageId}) async {
    try {
      var result = await dataSource.getPaymentUrl(packageId: packageId);

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure,String?>> paymentResponse({required String url}) async {
    try {
      var result = await dataSource.paymentResponse(url: url);

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

}