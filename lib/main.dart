import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_1/app_cache.dart';
import 'package:flutter_course_1/cubit/app_cubit.dart';
import 'package:flutter_course_1/dio_helper.dart';

import 'home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppCache.init();
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit()..getNews(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppState>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  primarySwatch: Colors.purple,
                  textTheme: const TextTheme(
                      titleMedium: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500))),
              darkTheme: ThemeData(
                  primarySwatch: Colors.indigo,
                  cardColor: Colors.black,
                  scaffoldBackgroundColor: Colors.blueGrey,
                  textTheme: const TextTheme(
                      titleMedium: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500))),
              themeMode: AppCubit().get(context).isDark
                  ? ThemeMode.dark
                  : ThemeMode.light,
              home: HomeScreen(),
            );
          }),
    );
  }
}
