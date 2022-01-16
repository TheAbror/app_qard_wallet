import 'package:flutter/material.dart';
import 'package:qard_wallet/domain/enums/init_type.dart';
import 'package:qard_wallet/presentation/bloc/splash_bloc.dart';
import 'package:qard_wallet/presentation/screen/signin/signin_screen.dart';
import 'package:qard_wallet/presentation/screen/splash/select_action_screen.dart';


class SplashScreen extends StatefulWidget {
  static const routeName = "/";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {

  late SplashBloc _bloc;

  void _goToHome() {

    InitType result = InitType.register;

    if (result ==  InitType.intro) {

    }

    if (result ==  InitType.login) {
      Navigator.pushNamed(context, SignInScreen.routeName);

    }

    if (result ==  InitType.register) {
      Navigator.pushNamed(context, SelectActionScreen.routeName);

    }

  }

  @override
  void initState() {
    super.initState();
    _bloc = SplashBloc();
    Future.delayed(const Duration(seconds: 5), _goToHome);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Container(
          color: Theme.of(context).colorScheme.primaryVariant,
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                ],
              )
          ),
        )
    );
  }
}
