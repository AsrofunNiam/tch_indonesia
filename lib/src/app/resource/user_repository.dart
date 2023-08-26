import 'package:shared_preferences/shared_preferences.dart';
import 'package:tch_indonesia/src/app/model/user.dart';

class UserRepository {
  UserRepository({this.user, required this.tokenRepository});
  static UserRepository instance = UserRepository(tokenRepository: '');
  User? user;
  String? tokenRepository;

  void setUserUserRepository(String? accessUserRepository) {
    tokenRepository = accessUserRepository;
  }

  Future<void> saveUserRepository(String dataToken) async {
    final SharedPreferences userRepository =
        await SharedPreferences.getInstance();
    final token = userRepository.getString(dataToken);
    UserRepository(tokenRepository: token);
  }

  void unset() {
    tokenRepository = null;
    user = null;
  }
}
