import 'package:dartz/dartz.dart';
import 'package:urfit/core/error/failures.dart';
import 'package:urfit/modules/auth_module/data/models/user/cached_user.dart';
import 'package:urfit/modules/auth_module/personal_info/data/models/body_parts_model.dart';
import 'package:urfit/modules/auth_module/personal_info/data/models/selection_item_model.dart';
import 'package:urfit/modules/auth_module/personal_info/data/data_source/personal_info_datasource.dart';
import 'package:urfit/modules/auth_module/personal_info/data/models/user_goals_model.dart';
import 'package:urfit/modules/auth_module/repo/authentication_repo.dart';

import '../../../../../core/utils/service_locator.dart';
import '../models/no_of_daily_meals.dart';
import '../models/user_personal_info_model.dart';

abstract class PersonalInfoRepo {
  Future<Either<Failure, List<UserGoalsModel>>> getGoals();
  Future<Either<Failure, List<SelectionItemModel>>> getDietOptions();
  Future<Either<Failure, List<SelectionItemModel>>> getLikedMealsOptions();
  Future<Either<Failure, List<NoOfDailyMealsModel>>> getNoOfDailyMealsOptions();

  Future<Either<Failure, List<SelectionItemModel>>> getMealsVariantsOptions();
  Future<Either<Failure, List<SelectionItemModel>>> getNotLikedMealsOptions();
  Future<Either<Failure, List<BodyPartsModel>>> getMuscleFocus();
  Future<Either<Failure, List<SelectionItemModel>>> getWorkoutTypes();
  Future<Either<Failure, List<SelectionItemModel>>> getEquipments();
  Future<Either<Failure,CacheUser>> updatePersonalInfo({required UserPersonalInfoModel personalInfoModel});
  Future<Either<Failure,void>> changePassword({required String oldPassword, required String newPassword , required String confirmPassword});

}

class PersonalInfoRepoImpl implements PersonalInfoRepo {
  final PersonalInfoDataSource _dataSource;

  const PersonalInfoRepoImpl(this._dataSource);

  @override
  Future<Either<Failure, List<SelectionItemModel>>> getDietOptions() async {
    try {
      var result = await _dataSource.getDietOptions();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SelectionItemModel>>>
      getLikedMealsOptions() async {
    try {
      var result = await _dataSource.getLikedMealsOptions();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SelectionItemModel>>>
      getMealsVariantsOptions() async {
    try {
      var result = await _dataSource.getMealsVariantsOptions();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SelectionItemModel>>>
      getNotLikedMealsOptions() async {
    try {
      var result = await _dataSource.getNotLikedMealsOptions();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<UserGoalsModel>>> getGoals() async {
    try {
      var result = await _dataSource.getGoals();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BodyPartsModel>>> getMuscleFocus() async {
    try {
      var result = await _dataSource.getMuscleFocus();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SelectionItemModel>>> getWorkoutTypes() async {
    try {
      var result = await _dataSource.getWorkoutTypes();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SelectionItemModel>>> getEquipments() async {
    try {
      var result = await _dataSource.getEquipments();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NoOfDailyMealsModel>>> getNoOfDailyMealsOptions() async {
    try {
      var result = await _dataSource.getNoOfDailyMealsOptions();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CacheUser>> updatePersonalInfo({required personalInfoModel}) async {
    try {
      var result = await _dataSource.updatePersonalInfo(personalInfoModel: personalInfoModel);
      await sl<AuthenticationRepo>().saveUser(
          CacheUser.fromUserModel(result));
      final user =
      CacheUser.fromUserModel(result);

      return right(user);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> changePassword({required String oldPassword, required String newPassword, required String confirmPassword}) async {
    try {
      var result = await _dataSource.changePassword(oldPassword: oldPassword, newPassword: newPassword, confirmPassword: confirmPassword);

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }


}
