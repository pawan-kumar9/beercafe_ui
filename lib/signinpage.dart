//ignore_for_file: avoid_unnecessary_containers,prefer_const_constructors,prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade700,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.arrow_back),
                      Text(
                        "Register",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: const Text(
                    "Sign In",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  "Hello User! Welcome to deep's BeerCafe. Please Enter your login details.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  color: Colors.white),
              child: Column(
                children: [
                  TextField(
                      decoration: InputDecoration(
                    labelText: 'Username',
                    fillColor: Colors.blue,
                  )),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?"),
                  ),
                  buttonsWidget("Sign In", Colors.black, Colors.white),
                  SizedBox(height: 80),
                  SignInButton(
                    Buttons.Google,
                    onPressed: () {},
                    text: "Continue with Google",
                  ),
                  SignInButton(
                    Buttons.Facebook,
                    onPressed: () {},
                    text: "Continue with Facebook",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buttonsWidget(String text, Color color, Color txtcolor) {
  return Container(
    alignment: Alignment.center,
    height: 60,
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(30.0)),
    child: Text(
      text,
      style:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: txtcolor),
    ),
  );
}
