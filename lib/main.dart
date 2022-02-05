import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qard_wallet/presentation/screen/auth/signin/signin_screen.dart';
import 'package:qard_wallet/presentation/screen/auth/signin/twofa_authorization_screen.dart';
import 'package:qard_wallet/presentation/screen/auth/signup/password_creation_screen.dart';
import 'package:qard_wallet/presentation/screen/auth/signup/signup_confirmation_screen.dart';
import 'package:qard_wallet/presentation/screen/auth/signup/signup_modification_screen.dart';
import 'package:qard_wallet/presentation/screen/auth/signup/signup_screen.dart';
import 'package:qard_wallet/presentation/screen/auth/signup/success_account_creation_screen.dart';
import 'package:qard_wallet/presentation/screen/auth/signup/terms_accepting_screen.dart';
import 'package:qard_wallet/presentation/screen/auth/splash/select_action_screen.dart';
import 'package:qard_wallet/routes.dart';
import 'package:qard_wallet/theme.dart';
import 'presentation/screen/auth/splash/splash_screen.dart';

void main() {
  runApp(const QardWalletApp());
}

class QardWalletApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);

  const QardWalletApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (context, ThemeMode value, child) {
        return GetMaterialApp(
          title: 'Qard Wallet',
          themeMode: value,
          theme: theme(),
          darkTheme: darkTheme(),
          initialRoute: SuccessCreateAccountScreen.routeName,
          routes: routes,
        );
      },
    );
  }
}
