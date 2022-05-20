import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_intership/utilities/constants.dart';
import 'package:flutter_intership/utilities/dimensions.dart';

class Login extends StatefulWidget {
  static String id = 'Login';
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: Dimensions.loginTopmargin),
            height: Dimensions.loginLogoHeight,
            child: Hero(
                tag: "logo",
                child: Image.asset('assets/images/resoluteAI_logo.png')),
          ),
          SizedBox(
            height: Dimensions.loginSizedHeight,
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.padding20),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius:
                      BorderRadius.circular(Dimensions.borderRadius12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: kAppColor,
                  ),
                  borderRadius:
                      BorderRadius.circular(Dimensions.borderRadius12),
                ),
                hintText: "Email",
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.padding20),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius:
                      BorderRadius.circular(Dimensions.borderRadius12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: kAppColor,
                  ),
                  borderRadius:
                      BorderRadius.circular(Dimensions.borderRadius12),
                ),
                hintText: "password",
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
          ),
          GestureDetector(
            onTap: SignIn,
            child: Padding(
              padding: EdgeInsets.all(Dimensions.padding20),
              child: Container(
                width: double.infinity,
                height: 51,
                decoration: BoxDecoration(
                  color: kAppColor,
                  borderRadius: BorderRadius.circular(Dimensions.borderRadius5),
                ),
                child: const Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
