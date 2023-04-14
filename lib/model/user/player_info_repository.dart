import 'package:dio/dio.dart';
import 'package:sporting_app/model/user/player_info.dart';
import 'package:sporting_app/model/user/user.dart';

class PlayerInfoRepository {
  final dio = Dio();

  Future<PlayerInfo> findById(int id) {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        User user = User(
            id: 4,
            nickname: "nameddd",
            email: "ssar@naver.com",
            role: "USER",
            status: "활성화");
        return PlayerInfo(
            id: 1,
            user: user,
            address: "부산시",
            age: "20대",
            gender: "남성",
            tel: "010-2050-5050");
      },
    );
  }
}
