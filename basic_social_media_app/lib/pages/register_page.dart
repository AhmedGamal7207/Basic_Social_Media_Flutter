// ignore_for_file: use_build_context_synchronously

import 'package:basic_social_media_app/common/helper_functions.dart';
import 'package:basic_social_media_app/pages/login_page.dart';
import 'package:basic_social_media_app/widgets/button_widget.dart';
import 'package:basic_social_media_app/widgets/textfield_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmController = TextEditingController();
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();

    void register() async {
      showDialog(
        context: context,
        builder: (context) {
          return Center(child: CircularProgressIndicator());
        },
      );

      if (passwordController.text != confirmController.text) {
        Navigator.pop(context);
        displayMessageToUser(context, "Passwords don't match!");
      } else {
        try {
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text,
          );
          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoginPage();
              },
            ),
          );
        } on FirebaseAuthException catch (e) {
          Navigator.pop(context);
          displayMessageToUser(context, e.code);
        }
      }
    }

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // logo
                  Icon(
                    Icons.person,
                    size: 80,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  SizedBox(height: 15),
                  // app name
                  Text("M J - S O C I A L", style: TextStyle(fontSize: 30)),
                  SizedBox(height: 50),
                  MyTextField(
                    controller: firstNameController,
                    hintText: "First Name",
                    obscureText: false,
                  ),
                  SizedBox(height: 15),
                  MyTextField(
                    controller: lastNameController,
                    hintText: "Last Name",
                    obscureText: false,
                  ),
                  SizedBox(height: 15),
                  // email text field
                  MyTextField(
                    controller: emailController,
                    hintText: "Email",
                    obscureText: false,
                  ),
                  SizedBox(height: 15),
                  // password text field
                  MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  SizedBox(height: 15),
                  MyTextField(
                    controller: confirmController,
                    hintText: "Confirm Password",
                    obscureText: true,
                  ),
                  SizedBox(height: 15),

                  // sign up
                  MyButton(text: "Register", onTap: register),
                  SizedBox(height: 10),
                  // Register
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginPage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Sign In.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
