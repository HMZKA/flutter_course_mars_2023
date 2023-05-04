import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_1/login_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

import 'cubit/lang_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LangCubit(),
      child: BlocConsumer<LangCubit, LangState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            locale: LangCubit().get(context).locale,
            home: LoginScreen(),
          );
        },
      ),
    );
  }
}
