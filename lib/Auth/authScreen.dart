import 'package:alison_task/Auth/controller/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Core/Commone/variables.dart';
import '../Navigation/navScreen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBar(),
                    ));
              },
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/login.jpeg'))),
        child: Padding(
          padding: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.2,
                ),
                Padding(
                  padding: EdgeInsets.only(right: w * 0.75),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: w * .06,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: h * 0.04,
                ),
                Container(
                  child: TextFormField(
                    controller: name,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                        fontSize: w * 0.05,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(w * 0.03),
                        child: Icon(CupertinoIcons.mail),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: w * 0.04,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Container(
                  // color: Colors.black,
                  child: TextFormField(
                    controller: password,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                        fontSize: w * 0.05,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(w * 0.03),
                        child: Icon(CupertinoIcons.lock),
                      ),
                      labelText: "password",
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: w * 0.04,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.55, top: h * 0.03),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: h * 0.04,
                ),
                Consumer(
                  builder: (context,ref,child) {
            
                    return InkWell(
                      onTap: () {
                        ref.read(AuthControllerProvider).login(email: name.text.trim(), password: password.text.trim(), context: context);

                      },
                      child: Container(
                        height: h * .06,
                        width: w * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.black),
                        )),
                      ),
                    );
                  }
                ),
                SizedBox(
                  height: h * 0.04,
                ),
                Text(
                  'Dont have a account ? Create Account',
                  style: TextStyle(color: Colors.white, fontSize: w * 0.04),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
