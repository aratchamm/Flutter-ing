import 'package:flutter/material.dart';
import 'TextFormFieldSignIn.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  SignInFormState createState() {
    return SignInFormState();
  }
}

class SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormFieldSignIn(labelTextDetail: "Username"),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: DropDownFormFieldSignIn(
                  items: ["Male", "Female", "Other"],
                  labelText: "Gender",
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: TextFormFieldSignIn(labelTextDetail: "Age"),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextFormFieldSignIn(labelTextDetail: "Height (cm)"),
          SizedBox(
            height: 20,
          ),
          TextFormFieldSignIn(labelTextDetail: "Weight (kg)"),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class SignInFormPage2 extends StatefulWidget {
  const SignInFormPage2({super.key});

  @override
  SignInFormPage2State createState() {
    return SignInFormPage2State();
  }
}

class SignInFormPage2State extends State<SignInFormPage2> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormFieldSignIn(labelTextDetail: "Email Address"),
          SizedBox(
            height: 20,
          ),
          PasswordFormFieldSignIn(labelTextDetail: "Password"),
          SizedBox(
            height: 20,
          ),
          PasswordFormFieldSignIn(labelTextDetail: "Confirm Password"),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class SignInFormPage3 extends StatefulWidget {
  const SignInFormPage3({super.key});

  @override
  SignInFormPage3State createState() {
    return SignInFormPage3State();
  }
}

class SignInFormPage3State extends State<SignInFormPage3> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: 17,
                    top: 17,
                  ),
                  child: Text(
                    "+66",
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                child: PhoneFormFieldSignIn(labelTextDetail: "Phone Number"),
                flex: 10,
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Enter OTP",
            style: TextStyle(
              color: Color(0xFF114817),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BoxFormFieldSignIn(),
          SizedBox(
            height: 30,
          ),
          Text(
            "Resend Code",
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Color(0xFF114817),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
