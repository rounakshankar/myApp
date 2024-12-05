import 'package:flutter/material.dart';
import 'package:foodapp/components/TextFields.dart';
import 'package:foodapp/components/buttons.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,

            ),
            const SizedBox(height: 25),
            // message app slogan
            Text("Let's Create an account for you",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            // email textfield
            MyTextField(
                controller: emailController,
                hintText: 'Email',
                obsecureText: false),
            const SizedBox(height: 10),
            // password textfield
            MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obsecureText: true),
            // confirm password text field
            const SizedBox(height: 10),
            // email textfield
            MyTextField(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                obsecureText: true),

            //sign up button
            MyButton(
              text: "Sign Up",
              onTap: (){},
            ),
            const SizedBox(height: 25),

            // alreay have an account? login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "alreay have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("login here",
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
      ),
    );
  }
}