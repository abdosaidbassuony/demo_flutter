import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:gpu_flutter_app/data_layer/api_client/api_client.dart';
import 'package:gpu_flutter_app/data_layer/repository/repositoty.dart';

import 'application.dart';

void main() {
  setupDependencies();
  runApp(Application());
}

void setupDependencies() {
  final sl = GetIt.instance;
  sl.registerLazySingleton(() => ApiClient(sl()));
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => Repository(sl()));
}
