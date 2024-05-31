import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pomodoro/bloc_provider.dart';
import 'package:pomodoro/init_dependencies.dart';

/**
 * @Sipoufo
 * Hive : use for local storage
 */

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); // init Hive.

  // Dependencies initializations
  await initDependencies();

  runApp(MultiBlocProvider(
    providers: AppBlocProvider.allBlocProvider,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pomodor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(),
    );
  }
}
