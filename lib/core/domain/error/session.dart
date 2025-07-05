import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/auth/data/repo/authentication_repo.dart';
import 'package:urfit/service_locator.dart';

class Session {
  static final _inst = Session._();
  Session._();
  factory Session() => _inst;
  UserModel? user;

  getUser() async {
    final result = await sl<AuthenticationRepo>().getUserDataFromServer();
    await result.fold((l) {}, (userModel) async {
      // await sl<DioServices>().init();
      user = userModel;
    });
  }
}
