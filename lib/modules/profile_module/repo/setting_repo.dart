import 'package:dartz/dartz.dart';
import 'package:urfit/core/domain/error/failures.dart';
import 'package:urfit/modules/profile_module/data/model/plan_history_model.dart';

import '../data/model/static_page_model.dart';
import '../data/setting_remote_data_source.dart';

class SettingRepo {
  final SettingRemoteDataSource settingRemoteDataSource;

  SettingRepo(this.settingRemoteDataSource);
  Future<Either<Failure, void>> contactUs(
      {required String name,
      required String email,
      required String phone,
      required String message}) async {
    try {
      await settingRemoteDataSource.contactUs(
          name: name, email: email, phone: phone, message: message);

      return const Right(null);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, PlanHistoryModel>> getPlanHistory() async {
    try {
      final result = await settingRemoteDataSource.getPlanHistory();

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, StaticPageModel>> getStaticPage(
      {required String key}) async {
    try {
      final result = await settingRemoteDataSource.getStaticPage(key: key);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String>> deleteAccount() async {
    try {
      final result = await settingRemoteDataSource.deleteAccount();
      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
