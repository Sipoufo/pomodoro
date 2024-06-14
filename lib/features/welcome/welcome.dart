import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pomodoro/core/utils/colors.utils.dart';
import 'package:pomodoro/core/utils/fonts.utils.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 40.0),
        color: ColorsUtils.secondary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(),
                ),
              ),
              child: Container(
                width: double.maxFinite,
                height: 30.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logo/POMO.png"),
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Wrap(
                  direction: Axis.vertical,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runAlignment: WrapAlignment.center,
                  children: [
                    Text(
                      "You did it!",
                      textAlign: TextAlign.center,
                      style: RobotoFontUtils.bold.copyWith(fontSize: 40.0),
                    ),
                    Text(
                      "Successfully created account",
                      style: RobotoFontUtils.bold.copyWith(
                          fontSize: 11.0, color: ColorsUtils.nowPriority),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/welcome.png"),
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                        color: ColorsUtils.primary,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      "Get Started",
                      style: RobotoFontUtils.medium.copyWith(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
