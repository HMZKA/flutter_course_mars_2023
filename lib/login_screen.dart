import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

import 'cubit/lang_cubit.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LangCubit, LangState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.login),
            leading: Icon(Icons.menu),
            actions: [
              PopupMenuButton(
                itemBuilder: (context) =>
                    AppLocalizations.supportedLocales.map((e) {
                  return PopupMenuItem(
                    child: Text(e.languageCode),
                    value: e,
                    onTap: () {
                      LangCubit().get(context).changeLang(e);
                    },
                  );
                }).toList(),
              )
            ],
          ),
          body: Center(
            child: Text(
              AppLocalizations.of(context)!.password,
              style: const TextStyle(fontSize: 40),
            ),
          ),
        );
      },
    );
  }
}
