import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/screen/balance/balance_screen.dart';
import 'presentation/screen/balance/wallet_screen.dart';
import 'presentation/screen/exchange/exchange_screen.dart';
import 'presentation/screen/forgot/authorization_screen.dart';
import 'presentation/screen/forgot/biometric_authorization_screen.dart';
import 'presentation/screen/forgot/forgot_password_screen.dart';
import 'presentation/screen/forgot/succsess_forgot_password_screen.dart';
import 'presentation/screen/home/home_screen.dart';
import 'presentation/screen/pay/confirm_pay_screen.dart';
import 'presentation/screen/pay/pay_screen.dart';
import 'presentation/screen/receiver/receiver_screen.dart';
import 'presentation/screen/recover/recover_account_screen.dart';
import 'presentation/screen/send/send_screen.dart';
import 'presentation/screen/send/success_send_screen.dart';
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
                secondary: Colors.amberAccent,
                background: Color(0xfff2f2f2),
                brightness: Brightness.light,
              ),
              textTheme: const TextTheme(
                  headline1: TextStyle(color: Color(0xff353741),
                    fontSize: 36, fontFamily: 'GothamRounded', ),
                  headline2: TextStyle(color: Colors.black,
                    fontSize: 25 ),
                  bodyText1: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),
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
                background: Colors.black,
                brightness: Brightness.dark,
              ),
              textTheme: const TextTheme(
                  headline1: TextStyle(color: Colors.white,
                    fontSize: 30, fontFamily: 'GothamRounded', ),
                  headline2: TextStyle(color: Colors.white,
                      fontSize: 25 ),
                  bodyText1: TextStyle(color: Colors.white,
                      fontSize: 20 ),
                  bodyText2: TextStyle(color: Colors.white)
              ),
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
