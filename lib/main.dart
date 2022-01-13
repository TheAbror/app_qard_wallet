import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/screen/forgot/authorization_screen.dart';
import 'presentation/screen/forgot/biometric_authorization_screen.dart';
import 'presentation/screen/forgot/forgot_password_screen.dart';
import 'presentation/screen/forgot/succsess_forgot_password_screen.dart';
import 'presentation/screen/home/home_screen.dart';
import 'presentation/screen/recover/recover_account_screen.dart';
import 'presentation/screen/signin/signin_screen.dart';
import 'presentation/screen/signin/twofa_authorization_screen.dart';
import 'presentation/screen/signout/confirmate_signout_screen.dart';
import 'presentation/screen/signout/create_user_screen.dart';
import 'presentation/screen/signout/signout_screen.dart';
import 'presentation/screen/signout/success_create_account_screen.dart';
import 'presentation/screen/signout/term_and_condition_screen.dart';
import 'presentation/screen/splash/select_action_screen.dart';
import 'presentation/screen/splash/splash_screen.dart';

void main() {
  runApp(const QardWalletApp());
}

class QardWalletApp extends StatelessWidget {

  const QardWalletApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Qard Wallet',
      theme: ThemeData(
        //primaryColorDark: ,
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        //splash
        SplashScreen.routeName: (context) => const SplashScreen(),
        SelectActionScreen.routeName: (context) => const SelectActionScreen(),
        //signout
        SignOutScreen.routeName: (context) => const SignOutScreen(),
        ConfirmateSignOutScreen.routeName: (context) => const ConfirmateSignOutScreen(),
        CreateUserScreen.routeName: (context) => const CreateUserScreen(),
        TermAndConditionScreen.routeName: (context) => const TermAndConditionScreen(),
        SuccessCreateAccountScreen.routeName: (context) => const SuccessCreateAccountScreen(),
        //signin
        SignInScreen.routeName: (context) => const SignInScreen(),
        TwofaAuthorizationScreen.routeName: (context) => const TwofaAuthorizationScreen(),
        //forgot password
        AuthorizationScreen.routeName: (context) => const AuthorizationScreen(),
        BiometricAuthorizationScreen.routeName: (context) => const BiometricAuthorizationScreen(),
        ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
        SuccsessForgotPasswordScreen.routeName: (context) => const SuccsessForgotPasswordScreen(),
        //recover
        RecoverAccountScreen.routeName: (context) => const RecoverAccountScreen(),
        //home
        HomeScreen.routeName: (context) => const HomeScreen(),

      },
    );
  }
}
