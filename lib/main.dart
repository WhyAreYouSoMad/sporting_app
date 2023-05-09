import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:sporting_app/core/constants/my_routes.dart';
import 'package:sporting_app/model/auth/auth_repository.dart';
import 'package:sporting_app/provider/session_provider.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  SessionUser sessionUser = await AuthUserRepository().fetchJwtVerify();

  KakaoSdk.init(
    nativeAppKey: '0e844976288d2fd4a76d9f86d972e6aa',
  );

  runApp(
    ProviderScope(
      overrides: [
        sessionProvider.overrideWithValue(sessionUser)
      ],
      child: MyApp(),
    ),
  );
}


class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SessionUser sessionUser = ref.read(sessionProvider);
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: sessionUser.isLogin! ? MyRoute.mainPage : MyRoute.loginPage,
      routes: getRouter(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontFamily: 'NotoSans',
          )
        )
      ),
    );
  }

}