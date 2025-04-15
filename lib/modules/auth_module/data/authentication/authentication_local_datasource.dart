import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

import '../../../../../core/error/failures.dart';
import '../models/user/cached_user.dart';

abstract class BaseUserLocalDataSource {
  Future<void> saveUserToHive(CacheUser data);

  Future<CacheUser> getPersistedUser();

  Future<void> saveUserToken(String token);
  // Stream<bool> hasToken();
  Future<String?> getUserToken();
  Future<void> deleteUserToken();
  Future<void> deleteUser();
}

class UserLocalDataSource extends BaseUserLocalDataSource {
  final FlutterSecureStorage secureStorage;

  UserLocalDataSource(this.secureStorage);

  @override
  Future<void> saveUserToHive(CacheUser data) async {
    try {
      var box = await Hive.openBox<CacheUser>("user");

      box.put("profile", data);

      // var event = box.get(key);
      // box.close();
    } on Exception catch (e) {
      throw CacheFailure(e.toString());
    }
  }

  @override
  Future<CacheUser> getPersistedUser() async {
    try {
      final userBox = await Hive.openBox<CacheUser>("user");
      final CacheUser? cacheUser = userBox.get('profile');

      await userBox.close();

      if (cacheUser == null) {
        deleteUserToken();
        throw CacheFailure("user not found");
      }
      return cacheUser;
    } on Exception catch (e) {
      throw CacheFailure(e.toString());
    }
  }

  //
  // Future<> generateEncryption(){
  //
  // }
  @override
  Future<void> saveUserToken(String token) async {
    try {
      // print("saveUserToken $token");

      //BOX_NAME is any string key for you box name.
      // final secureKey =   Hive.generateSecureKey();
      //
      // const options = IOSOptions(accessibility: KeychainAccessibility.first_unlock,);

      //SECURE_STORAGE_KEY is any string key.
      // await secureStorage.write(
      //   key: "secureKey",
      //   value: json.encode(secureKey),
      //   iOptions: options,
      // );
      // final cipher = HiveAesCipher(secureKey);
      final encryptedBox = await Hive.openBox(
        "token",
      );
      await encryptedBox.put(
        'token',
        token,
      );
      // print(encryptedBox.values);
      // encryptedBox.close();
    } on Exception catch (e) {
      // print("error saving token");
      throw CacheFailure(e.toString());
    }
  }

  @override
  Future<void> deleteUserToken() async {
    // print("delete token");
    try {
      await Hive.deleteBoxFromDisk("token");
      await secureStorage.delete(key: "secureKey");
    } on Exception catch (e) {
      throw CacheFailure(e.toString());
    }
  }

  @override
  Future<void> deleteUser() async {
    try {
      await Hive.deleteBoxFromDisk("user");
    } on Exception catch (e) {
      throw CacheFailure(e.toString());
    }
  }

  @override
  Future<String?> getUserToken() async {
    const options = IOSOptions(
      accessibility: KeychainAccessibility.first_unlock,
    );

    // await deleteUserToken();
    // print("getUserToken");
    // var secureKey = await secureStorage.read(key: "secureKey",iOptions: options);
    String? token;
    // if (secureKey != null) {
    // List<int> encryptionKey =
    // (json.decode(secureKey) as List<dynamic>).cast<int>();

    // final cipher = HiveAesCipher(encryptionKey);
    // print("secure $encryptionKey");
    // print(Hive.isBoxOpen("token"));
    try {
      if (!Hive.isBoxOpen("token")) {
        final encryptedBox = await Hive.openBox(
          "token",
          // encryptionCipher: cipher,
          crashRecovery: false,
        );
        token = encryptedBox.get("token");
      } else {
        token = Hive.box("token").get("token");
      }
      // print("token ${encryptedBox.values}");
      // encryptedBox.close();
    } catch (error) {
      // print('errrrrr  $error');
    }

    // }
    // print("getUserToken : $token");

    return token;
    //
    // return "3ffYVwL6U1OGTNSrdzlV0MJREtKfmDZImpEGFLhm2d339b13";
    // return "lROoaNb7ftBllFnKKl1TiPPfGjRN703JBHOlzfGqa6217bd2";
  }

// @override
// Stream<bool> hasToken()  {
//   var box =Hive.box("token").watch(key: "token");
//    return box.map((event) => event.value != null);
// }
}
