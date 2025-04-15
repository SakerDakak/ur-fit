import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:urfit/core/error/failures.dart';
import 'package:urfit/modules/profile_module/data/model/plan_history_model.dart';

import '../data/model/static_page_model.dart';
import '../data/setting_remote_data_source.dart';

abstract class BaseSettingRepo {
  Future<Either<Failure,void>> contactUs({required String name, required String email, required String phone, required String message});
  Future<Either<Failure,PlanHistoryModel>> getPlanHistory();
  Future<Either<Failure,StaticPageModel>> getStaticPage({required String key});

}

class SettingRepo extends BaseSettingRepo{
  final BaseSettingRemoteDataSource settingRemoteDataSource;

  SettingRepo(this.settingRemoteDataSource);
  @override
  Future<Either<Failure,void>> contactUs({required String name, required String email, required String phone, required String message}) async {
    try {
      final result = await settingRemoteDataSource.contactUs(name: name, email: email, phone: phone, message: message);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PlanHistoryModel>> getPlanHistory() async {
    try {
      final result = await settingRemoteDataSource.getPlanHistory();

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, StaticPageModel>> getStaticPage({required String key}) async {
    try {
      final result = await settingRemoteDataSource.getStaticPage(key: key);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}