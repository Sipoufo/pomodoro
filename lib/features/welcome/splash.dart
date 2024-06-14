import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro/core/common/cubit/app_user_cubit.dart';
import 'package:pomodoro/core/common/cubit/app_user_state.dart';
import 'package:pomodoro/core/utils/colors.utils.dart';
import 'package:pomodoro/features/welcome/welcome.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return BlocSelector<AppUserCubit, AppUserState, bool>(
                  selector: (state) {
                    return state is AppUserLoggedIn;
                  },
                  builder: (context, isLoggedIn) {
                    if (isLoggedIn) {
                      return const Welcome();
                    } else {
                      return const Welcome();
                    }
                  },
                );
              }),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsUtils.secondary,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo/POMO.png"),
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
