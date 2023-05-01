import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final dio = Dio(
    BaseOptions(
      baseUrl: "http://192.168.188.133:8080",
      contentType: "application/json; charset=utf-8",
    )
);

const secureStorage = FlutterSecureStorage();

String userRole = '';