import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildColumnBody(),
      ),
    );
  }

  Column buildColumnBody() {
    return Column(
      children: <Widget>[
        buildPaddingTicLogo(),
        SizedBox(
          height: 25,
        ),
        buildTextSuccessful(),
        buildTextWelcome()
      ],
    );
  }

  Padding buildPaddingTicLogo() {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 250, bottom: 0),
      child: Center(
        child: CircleAvatar(
          radius: 55,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('asset/ticc.png'),
          ),
        ),
      ),
    );
  }

  Text buildTextSuccessful() {
    return Text(
      "Sign in successful!",
      style: TextStyle(
        fontSize: 15,
      ),
    );
  }

  Text buildTextWelcome() {
    return Text(
      "Welcome to Hysys",
      style: TextStyle(
        fontSize: 35,
      ),
    );
  }
}
