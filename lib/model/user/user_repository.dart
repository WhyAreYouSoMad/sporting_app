import 'package:dio/dio.dart';
import 'package:sporting_app/model/user/user.dart';

class UserRepository {
  final dio = Dio();

  Future<User> findById(int id) {
    return Future.delayed(
      const Duration(seconds: 1),
          () {
        return User(
          id: 4,
          nickname: "ssar",
          email: "ssar@naver.com",
          role: "USER",
          status: "활성화"
        );
      },
    );
  }
}