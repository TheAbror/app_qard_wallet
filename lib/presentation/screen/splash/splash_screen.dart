import 'package:flutter/material.dart';
import 'package:qard_wallet/domain/enums/init_type.dart';
import 'package:qard_wallet/presentation/bloc/splash_bloc.dart';
import 'package:qard_wallet/presentation/screen/home/home_screen.dart';


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

    InitType result = InitType.intro;

    if (result ==  InitType.intro) {
      Navigator.pushNamed(context, HomeScreen.routeName);

    }

    if (result ==  InitType.login) {

    }

    if (result ==  InitType.register) {

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
                  const Text('Cargando...'),
                ],
              )
          ),
        )
    );
  }
}
