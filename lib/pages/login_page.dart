// ignore: unused_import
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smart_login/components/my_button.dart';
import 'package:smart_login/components/my_textfield.dart';
import 'package:smart_login/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void SignUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                //logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                SizedBox(
                  height: 50,
                ),

                //welcome back you have been missed
                Text(
                  "Welcome back! You have been missed",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),

                SizedBox(
                  height: 50,
                ),

                //username textfield
                MyTextField(
                  controller: usernameController,
                  HintText: "Username",
                  obscureText: false,
                ),
                SizedBox(
                  height: 10,
                ),

                //password textfield
                MyTextField(
                  controller: passwordController,
                  HintText: "Password",
                  obscureText: true,
                ),
                SizedBox(
                  height: 10,
                ),

                //forget password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forget Password",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),

                //sign in button
                MyButton(
                  onTap: SignUserIn,
                ),
                SizedBox(
                  height: 50,
                ),

                //Or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 3,
                        color: Colors.grey[400],
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Or Continue With",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 3,
                        color: Colors.grey[400],
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                //google plus apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(ImagePath: "lib/images/google.png"),
                    SizedBox(
                      width: 25,
                    ),
                    SquareTile(ImagePath: "lib/images/apple.png"),
                  ],
                ),

                SizedBox(
                  height: 50,
                ),

                //not a member register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Register Now",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
