import 'package:dartz/dartz.dart';
import 'package:urfit/core/domain/error/failures.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/personal_info/data/data_source/personal_info_datasource.dart';
import 'package:urfit/modules/personal_info/data/models/body_parts_model.dart';
import 'package:urfit/modules/personal_info/data/models/selection_item_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_personal_info_model.dart';

import '../models/no_of_daily_meals.dart';

class PersonalInfoRepoImpl {
  final PersonalInfoDataSourceImpl _dataSource;

  const PersonalInfoRepoImpl(this._dataSource);

  Future<Either<Failure, List<SelectionItemModel>>> getDietOptions() async {
    try {
      final result = await _dataSource.getDietOptions();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<SelectionItemModel>>> getLikedMealsOptions() async {
    try {
      final result = await _dataSource.getLikedMealsOptions();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<SelectionItemModel>>> getMealsVariantsOptions() async {
    try {
      final result = await _dataSource.getMealsVariantsOptions();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<SelectionItemModel>>> getNotLikedMealsOptions() async {
    try {
      final result = await _dataSource.getNotLikedMealsOptions();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<UserGoalsModel>>> getGoals() async {
    try {
      final result = await _dataSource.getGoals();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<BodyPartsModel>>> getMuscleFocus() async {
    try {
      final result = await _dataSource.getMuscleFocus();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<SelectionItemModel>>> getWorkoutTypes() async {
    try {
      final result = await _dataSource.getWorkoutTypes();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<SelectionItemModel>>> getEquipments() async {
    try {
      final result = await _dataSource.getEquipments();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<NoOfDailyMealsModel>>> getNoOfDailyMealsOptions() async {
    try {
      final result = await _dataSource.getNoOfDailyMealsOptions();

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, UserModel>> updatePersonalInfo({required UserInfoRequest personalInfoModel}) async {
    try {
      final result = await _dataSource.updatePersonalInfo(personalInfoModel: personalInfoModel);
      // await sl<AuthenticationRepo>().saveUser(CacheUser.fromUserModel(result));

      return right(result);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  // Future<Either<Failure, void>> changePassword(
  //     {required String oldPassword, required String newPassword, required String confirmPassword}) async {
  //   try {
  //     var result = await _dataSource.changePassword(
  //         oldPassword: oldPassword, newPassword: newPassword, confirmPassword: confirmPassword);

  //     return right(result);
  //   } catch (e) {
  //     return left(ServerFailure(e.toString()));
  //   }
  // }
}
