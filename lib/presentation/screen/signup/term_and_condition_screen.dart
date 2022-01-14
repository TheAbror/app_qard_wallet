import 'package:flutter/material.dart';

class TermAndConditionScreen extends StatefulWidget {
  static const routeName = "/signout/term_and_condition";

  const TermAndConditionScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TermAndConditionScreenState();
  }
}

class _TermAndConditionScreenState extends State<TermAndConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("term_and_condition"),
      ),
      body: Center(
        child: Text("term_and_condition"),
      ),
    );
  }
}
