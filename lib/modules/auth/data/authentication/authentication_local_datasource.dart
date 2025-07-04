import 'package:hive/hive.dart';
import 'package:urfit/core/data/services/storage_keys.dart';

import '../../../../core/domain/error/failures.dart';
import '../models/user/cached_user.dart';

class UserLocalDataSource {
  UserLocalDataSource();

  Future<void> saveUserToHive(CacheUser data) async {
    try {
      var box = await Hive.openBox<CacheUser>("user");
      box.put("profile", data);
    } on Exception catch (e) {
      throw CacheFailure(e.toString());
    }
  }

  Future<CacheUser> getPersistedUser() async {
    try {
      final userBox = await Hive.openBox<CacheUser>("user");
      final CacheUser? cacheUser = userBox.get('profile');
      await userBox.close();
      if (cacheUser == null) {
        TokenService.deleteToken();
        throw CacheFailure("user not found");
      }
      return cacheUser;
    } on Exception catch (e) {
      throw CacheFailure(e.toString());
    }
  }

  Future<void> deleteUser() async {
    try {
      await Hive.deleteBoxFromDisk("user");
    } on Exception catch (e) {
      throw CacheFailure(e.toString());
    }
  }


  String? getUserToken() => TokenService.getToken();
}
