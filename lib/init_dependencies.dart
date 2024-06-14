import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pomodoro/core/common/cubit/app_user_cubit.dart';
import 'package:pomodoro/core/common/entities/user_entity.dart';

/// @Sipoufo
/// Description :
///  Use for init all dependencies
///
/// GetIt : Help to register dependencies and access to them anywhere in app

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  // Add interceptor
  serviceLocator
      // Hive for user already auth
      .registerFactory<Box<User>>(
    () => Hive.box<User>("user"),
  );

  // Core
  serviceLocator.registerLazySingleton(
    () => AppUserCubit(),
  );
  serviceLocator.registerFactory(
    () => InternetConnection(),
  );
}
