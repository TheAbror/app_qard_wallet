import 'package:flutter/material.dart';

class CreateUserScreen extends StatefulWidget {
  static const routeName = "/signout/user";

  const CreateUserScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CreateUserScreenState();
  }
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("create_user_screen"),
      ),
      body: Center(
        child: Text("create_user_screen"),
      ),
    );
  }
}
