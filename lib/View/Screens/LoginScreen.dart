// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:simpleapp/Model/Validation.dart';
import 'package:simpleapp/Model/customTextField.dart';
import 'package:simpleapp/View/Screens/Homescreen.dart';
import 'package:simpleapp/View/Screens/RegistrationScreen.dart';
import 'package:simpleapp/controller/auth_Controller.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  Validation _validation = Validation();
  AuthController _authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LOGIN SCREEN",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formkey,

          child: Column(
            children: [
              SizedBox(height: 40),
              Center(
                child: Text(
                  "Welcome User",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 40),
              Customtextfield(
                controller: _email,
                label: "Email",
                hint: "abc@gmail.com",

                validator: (value) {
                  return _validation.emailValidation(value);
                },
              ),
              SizedBox(height: 16),
              Customtextfield(
                controller: _password,
                label: "Password",
                hint: "********",
                isPassword: true,
                validator: (value) {
                  return _validation.passwordValidation(value);
                },
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    bool isSuccess = await _authController.LoginUser(
                      email: _email.text,
                      password: _password.text,
                    );

                    if (isSuccess && context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Login Successful! Welcome Back."),
                          backgroundColor: Colors.green,
                        ),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homescreen()),
                      );
                    } else if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Invalid Email or Password!"),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  } else {
                    String error = _validation.errors.join('\n');
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(error)));
                    _validation.errors.clear();
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                ),
                child: Text("Login"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Registrationscreen(),
                    ),
                  );
                },
                child: Text("Don't have an Account? Register Here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
