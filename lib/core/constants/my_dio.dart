import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final dio = Dio(
    BaseOptions(
      baseUrl: "http://3.35.3.137:8080",
      contentType: "application/json; charset=utf-8",
    )
);

const secureStorage = FlutterSecureStorage();

String userRole = '';