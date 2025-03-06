import 'package:basic_social_media_app/pages/register_page.dart';
import 'package:basic_social_media_app/widgets/button_widget.dart';
import 'package:basic_social_media_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    void login() {}

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
              // forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // sign in
              MyButton(text: "Login", onTap: login),
              SizedBox(height: 10),
              // Register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Register Here.",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
