import 'package:flutter/material.dart';
import 'package:foodapp/Pages/login%20page.dart';
import 'package:foodapp/Pages/Register page.dart';

class LoginOrRegister extends StatefulWidget{
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  // initally it will be login page
  bool ShowLoginPage = true;

  // toggle to register page
  void togglePages(){
    setState(() {
      ShowLoginPage = !ShowLoginPage;
    });
  }
  @override
  Widget build (BuildContext context){
    if (ShowLoginPage){
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
