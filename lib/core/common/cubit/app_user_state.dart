import 'package:flutter/material.dart';
import 'package:pomodoro/core/common/entities/user_entity.dart';

/**
 * @Sipoufo
 * Description : 
 *  Implementation of different states of cubit user thant can help us to 
 * identify state of user in all time in app
 */

@immutable
sealed class AppUserState {}

final class AppUserInitial extends AppUserState {}

final class AppUserLoggedIn extends AppUserState {
  final User user;
  AppUserLoggedIn({
    required this.user,
  });
}
