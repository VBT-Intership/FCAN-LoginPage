import 'package:flutter/material.dart';
import 'package:vbtLoginPage/views/signIn_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: buildColumnBody(),
      ),
    );
  }

  Column buildColumnBody() {
    return Column(
      children: <Widget>[
        buildPaddingColumnTexts(),
        SizedBox(
          height: 20,
        ),
        Column(
          children: <Widget>[
            buildPaddingForm(),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[buildPaddingButtonLogin()],
        )
      ],
    );
  }

  Column buildColumnTexts() {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(left: 0, top: 0, right: 140, bottom: 0),
          child: Text(
            "Employee Login",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 0, right: 20, bottom: 0),
          child: Text(
            "Welcome!",
            style: TextStyle(
              fontSize: 45,
            ),
          ),
        ),
        Text(
          "Please Sign-in to continue",
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }

  Form buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildTextFormFieldEmail(),
          buildTextFormFieldPassword(),
        ],
      ),
    );
  }

  TextFormField buildTextFormFieldEmail() {
    return TextFormField(
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: "Email address",
      ),
      validator: (value) {
        return value.contains(RegExp(r'[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}'))
            ? null
            : "Please enter a valid email";
      },
    );
  }

  TextFormField buildTextFormFieldPassword() {
    return TextFormField(
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        suffixIcon: FlatButton(
          onPressed: () {},
          child: Text(
            "Forgot Password ? ",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        labelText: "Password",
      ),
      obscureText: true,
      validator: (value) {
        return value.length <= 5
            ? null
            : "Password must be at most 5 characters";
      },
    );
  }

  RaisedButton buildRaisedButtonLogin() {
    return RaisedButton(
      color: Colors.blue,
      onPressed: () async {
        print(email);
        print(password);

        if (_formKey.currentState.validate()) {
          print("Successful Login");
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => SignInScreen()));
        } else {
          print("Incorrect Entry");
        }
      },
      child: Text(
        "Sign in",
        style: TextStyle(color: Colors.white),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.blue)),
    );
  }

// Padding
  Padding buildPaddingButtonLogin() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 15, right: 30, bottom: 0),
      child: buildRaisedButtonLogin(),
    );
  }

  Padding buildPaddingForm() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 0, right: 30, bottom: 0),
      child: buildForm(),
    );
  }

  Padding buildPaddingColumnTexts() {
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 120, right: 120, bottom: 0),
      child: buildColumnTexts(),
    );
  }
}
