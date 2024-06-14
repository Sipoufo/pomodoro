import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pomodoro/bloc_provider.dart';
import 'package:pomodoro/core/common/entities/user_entity.dart';
import 'package:pomodoro/features/welcome/splash.dart';
import 'package:pomodoro/init_dependencies.dart';

/// @Sipoufo
/// Hive : use for local storage

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); // init Hive.
  Hive.registerAdapter<User>(UserAdapter());

  // Open boxes
  await Hive.openBox<User>("User");

  // Dependencies initializations
  await initDependencies();

  runApp(
    MultiBlocProvider(
      providers: AppBlocProvider.allBlocProviders,
      child: const MyApp(),
    ),
  );

  // runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pomodoro',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}
