import 'package:flutter/material.dart';
import 'package:my_deliveries/components/my_textfield.dart';

import '../components/my_button.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordControler = TextEditingController();
  final TextEditingController confirmpasswordControler =
      TextEditingController();

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
            'lets create an account',
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
          //confirm password text field
          const SizedBox(
            height: 25,
          ),

          MyTextfield(
              controller: confirmpasswordControler,
              hintText: 'Confirm Password',
              obscureText: true),
          // sign in button
          const SizedBox(
            height: 25,
          ),

          MyButton(text: 'Sign Up', onTap: () {}),

          const SizedBox(
            height: 25,
          ),
          // already have an account login here
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'already have an account?',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                width: 25,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'Login now',
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
