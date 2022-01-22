import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/screen/auth/forgot/authorization_screen.dart';
import 'presentation/screen/auth/forgot/biometric_authorization_screen.dart';
import 'presentation/screen/auth/forgot/forgot_password_screen.dart';
import 'presentation/screen/auth/forgot/succsess_forgot_password_screen.dart';
import 'presentation/screen/auth/recover/recover_account_screen.dart';
import 'presentation/screen/auth/signin/signin_screen.dart';
import 'presentation/screen/auth/signin/twofa_authorization_screen.dart';
import 'presentation/screen/auth/signup/confirmate_signup_screen.dart';
import 'presentation/screen/auth/signup/create_password_screen.dart';
import 'presentation/screen/auth/signup/modify_signup_screen.dart';
import 'presentation/screen/auth/signup/signup_screen.dart';
import 'presentation/screen/auth/signup/success_create_account_screen.dart';
import 'presentation/screen/auth/signup/terms_and_conditions_screen.dart';
import 'presentation/screen/auth/splash/select_action_screen.dart';
import 'presentation/screen/auth/splash/splash_screen.dart';
import 'presentation/screen/home/home_screen.dart';
import 'presentation/screen/pool/exchange_screen.dart';
import 'presentation/screen/validator/balance/balance_screen.dart';
import 'presentation/screen/validator/balance/wallet_screen.dart';
import 'presentation/screen/validator/pay/confirm_pay_screen.dart';
import 'presentation/screen/validator/pay/pay_screen.dart';
import 'presentation/screen/validator/receiver/receiver_screen.dart';
import 'presentation/screen/validator/send/send_screen.dart';
import 'presentation/screen/validator/send/success_send_screen.dart';



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
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                  elevation: 1.5
              ),
              colorScheme: const ColorScheme.light(
                primary: Color(0xff00D0C4),
                primaryVariant: Colors.white,
                secondary: Color(0xff00D0C4),
                secondaryVariant: Colors.black,
                background: Color(0xfff2f2f2),
                brightness: Brightness.light,
              ),
              textTheme: const TextTheme(
                  headline1: TextStyle(color: Color(0xff353741),
                    fontSize: 36, fontFamily: 'GothamRounded', ),
                  headline2: TextStyle(color: Color(0xff353741),
                      fontSize: 25, fontFamily: 'GothamRounded'),
                  bodyText1: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.bold ),
                  bodyText2: TextStyle(color: Colors.black)
              ),
            ),
            darkTheme: ThemeData(
              appBarTheme: const AppBarTheme(
                  elevation: 1.5
              ),
              colorScheme: const ColorScheme.dark(
                primary: Color(0xff181818),
                primaryVariant: Color(0xff202020),
                secondary: Color(0xff00D0C4),
                secondaryVariant: Colors.white,
                background: Colors.black,
                brightness: Brightness.dark,
              ),
              textTheme: const TextTheme(
                  headline1: TextStyle(color: Colors.white,
                    fontSize: 36, fontFamily: 'GothamRounded', ),
                  headline2: TextStyle(color: Colors.white,
                      fontSize: 25, fontFamily: 'GothamRounded'),
                  bodyText1: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.bold),
                  bodyText2: TextStyle(color: Colors.white)
              ),
            ),
            initialRoute: SplashScreen.routeName,
            routes: {
              //splash
              SplashScreen.routeName: (context) => const SplashScreen(),
              SelectActionScreen.routeName: (context) => const SelectActionScreen(),
              //signup
              SignUpScreen.routeName: (context) => const SignUpScreen(),
              ConfirmateSignUpScreen.routeName: (context) => const ConfirmateSignUpScreen(),
              ModifySignUpScreen.routeName: (context) => const ModifySignUpScreen(),
              CreatePasswordScreen.routeName: (context) => const CreatePasswordScreen(),
              TermsAndConditionsScreen.routeName: (context) => const TermsAndConditionsScreen(),
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
              //pay
              PayScreen.routeName: (context) => const PayScreen(),
              ConfirmPayScreen.routeName: (context) => const ConfirmPayScreen(),
              //balance
              BalanceScreen.routeName: (context) => const BalanceScreen(),
              WalletScreen.routeName: (context) => const WalletScreen(),
              //send
              SendScreen.routeName: (context) => const SendScreen(),
              SuccessSendScreen.routeName: (context) => const SuccessSendScreen(),
              //receive
              ReceiverScreen.routeName: (context) => const ReceiverScreen(),
              //exchange
              ExchangeScreen.routeName: (context) => const ExchangeScreen(),
            },
          );

        });
  }
}
