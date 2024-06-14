import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro/core/common/cubit/app_user_cubit.dart';
import 'package:pomodoro/init_dependencies.dart';

/**
 * @Sipoufo
 * Description : 
 *  Use to init our Bloc
 */

class AppBlocProvider {
  static get allBlocProviders => [
        BlocProvider(
          create: (_) => serviceLocator<AppUserCubit>(),
        ),
      ];
}
