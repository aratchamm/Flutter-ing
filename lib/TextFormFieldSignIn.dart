import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class TextFormFieldSignIn extends StatefulWidget {
  final String labelTextDetail;

  TextFormFieldSignIn({Key? key, required this.labelTextDetail})
      : super(key: key);

  @override
  _TextFormFieldSignInState createState() => _TextFormFieldSignInState();
}

class _TextFormFieldSignInState extends State<TextFormFieldSignIn> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: widget.labelTextDetail,
      ),
    );
  }
}

class PasswordFormFieldSignIn extends StatefulWidget {
  final String labelTextDetail;

  PasswordFormFieldSignIn({Key? key, required this.labelTextDetail})
      : super(key: key);

  @override
  _PasswordFormFieldSignInState createState() =>
      _PasswordFormFieldSignInState();
}

class _PasswordFormFieldSignInState extends State<PasswordFormFieldSignIn> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isObscure,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: widget.labelTextDetail,
        suffixIcon: IconButton(
          icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _isObscure = !_isObscure;
            });
          },
        ),
      ),
    );
  }
}

class DropDownFormFieldSignIn extends StatefulWidget {
  String? dropdownValue;
  String labelText;

  List<String> items = [];

  DropDownFormFieldSignIn(
      {Key? key, required this.items, required this.labelText})
      : super(key: key);

  @override
  _DropDownFormFieldSignInState createState() =>
      _DropDownFormFieldSignInState();
}

class _DropDownFormFieldSignInState extends State<DropDownFormFieldSignIn> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
      ),
      value: widget.dropdownValue,
      dropdownColor: Colors.white,
      items: widget.items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          widget.dropdownValue = newValue!;
        });
      },
    );
  }
}

class PhoneFormFieldSignIn extends StatefulWidget {
  final String labelTextDetail;

  PhoneFormFieldSignIn({Key? key, required this.labelTextDetail})
      : super(key: key);

  @override
  _PhoneFormFieldSignInState createState() => _PhoneFormFieldSignInState();
}

class _PhoneFormFieldSignInState extends State<PhoneFormFieldSignIn> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(9),
      ],
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: widget.labelTextDetail,
      ),
    );
  }
}

class BoxFormFieldSignIn extends StatefulWidget {
  BoxFormFieldSignIn({Key? key}) : super(key: key);

  @override
  _BoxFormFieldSignInState createState() => _BoxFormFieldSignInState();
}

class _BoxFormFieldSignInState extends State<BoxFormFieldSignIn> {
  @override
  Widget build(BuildContext context) {
    return OTPTextField(
      length: 4,
      width: MediaQuery.of(context).size.width,
      fieldWidth: 50,
      style: TextStyle(fontSize: 16),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      keyboardType: TextInputType.number,
      inputFormatter: [FilteringTextInputFormatter.digitsOnly],
      fieldStyle: FieldStyle.underline,
      onCompleted: (pin) {
        print("Completed: " + pin);
      },
    );
  }
}
