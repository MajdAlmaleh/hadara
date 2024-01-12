import 'package:flutter/material.dart';
import 'package:hadara/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hadara/views/auth_view.dart';

void main() {
  runApp(const Hadara());
}

class Hadara extends StatelessWidget {
  const Hadara({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        locale: const Locale('ar'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        home: const AuthView());
  }
}
