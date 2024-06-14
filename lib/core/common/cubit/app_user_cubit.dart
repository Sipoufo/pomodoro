import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro/core/common/cubit/app_user_state.dart';
import 'package:pomodoro/core/common/entities/user_entity.dart';

/// @Sipoufo
/// Description :
///  Implementation of cubit for user. It will help us to determine if it's the
/// first time of user in app or not
class AppUserCubit extends Cubit<AppUserState> {
  AppUserCubit() : super(AppUserInitial());

  void updateUser(User? user) {
    if (user == null) {
      emit(AppUserInitial());
    } else {
      emit(AppUserLoggedIn(user: user));
    }
  }
}
