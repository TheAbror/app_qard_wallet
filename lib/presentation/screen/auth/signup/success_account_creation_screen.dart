import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qard_wallet/constants.dart';

class SuccessCreateAccountScreen extends StatefulWidget {
  static const routeName = "/signup/success";

  const SuccessCreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SuccessCreateAccountScreenState();
  }
}

class _SuccessCreateAccountScreenState
    extends State<SuccessCreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          SvgPicture.asset(
            'assets/images/success.svg',
            height: 400,
            fit: BoxFit.contain,
          ),
          const Text(
            'Success',
            style: TextStyle(
                fontSize: 45, color: primaryColor, fontFamily: 'Roboto'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.198),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          // Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                          primaryColor,
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Create Account',
                    style: TextStyle(fontFamily: 'GothamRounded'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
