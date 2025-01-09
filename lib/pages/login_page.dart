import 'package:flutter/material.dart';
import 'package:my_deliveries/components/my_button.dart';
import 'package:my_deliveries/components/my_textfield.dart';
import 'package:my_deliveries/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordControler = TextEditingController();
  void login() {
    // fill out auth

    // navigate to the home page
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //my logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(
            height: 25,
          ),

          //message or app slogan
          Text(
            'deliver your goods',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          //email field text
          const SizedBox(
            height: 25,
          ),

          MyTextfield(
              controller: emailController,
              hintText: 'Email',
              obscureText: false),

          //password textfield
          const SizedBox(
            height: 25,
          ),

          MyTextfield(
              controller: passwordControler,
              hintText: 'Password',
              obscureText: true),

          // sign in button
          const SizedBox(
            height: 25,
          ),
          MyButton(text: 'Sign In', onTap: login),

          const SizedBox(
            height: 25,
          ),
          // not a member register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member?',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                width: 25,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'Register now',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
