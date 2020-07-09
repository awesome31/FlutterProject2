import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  Widget buildEmailField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
      onSaved: (String email) {
        this.email = email;
      },
    );
  }

  Widget buildPasswordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      obscureText: true,
      validator: validatePassword,
      onSaved: (String pass) {
        this.password = pass;
      },
    );
  }

  Widget buildSubmitButton() {
    return RaisedButton(
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          //Here we can do whatever we want.
        }
      },
      child: Text('Submit'),
      color: Colors.lightBlue,
      textColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80, left: 20, right: 20),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            buildEmailField(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
            ),
            buildPasswordField(),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
            ),
            buildSubmitButton()
          ],
        ),
      ),
    );
  }
}
