import 'package:flutter/material.dart';
import 'package:foodapp/Pages/HomePage.dart';
import 'package:foodapp/components/TextFields.dart';
import 'package:foodapp/components/buttons.dart';

class LoginPage extends StatefulWidget{
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  //login
  void login(){
    /*
    auth logic
     */
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage(),
    ),
    );
  }
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
          Text("Welcome to BestPriceEats",
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
          // email textfield
          MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obsecureText: true),

          //signin button
          MyButton(
            text: "Sign In",
            onTap: login,
          ),
          const SizedBox(height: 25),

          // not a member? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Not a member?",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary
              ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
              onTap: widget.onTap,
              child: Text("Register now",
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