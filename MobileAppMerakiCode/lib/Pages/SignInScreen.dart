import 'package:MobileaAppMerakiCode/Pages/HomeScreen.dart';
import 'package:MobileaAppMerakiCode/Pages/MainMenu.dart';
import 'package:MobileaAppMerakiCode/Pages/RegisterScreen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  SignInScreenState createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 180,
            ),
            const Text(
              "Welcome to",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const Text(
              "Meraki Cipta Rasa",
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              "Please Login with your account",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            Form(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Silahkan masukkan E-mail';
                      }
                      return null;
                    },
                    cursorColor: Colors.deepPurple,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Colors.deepPurple),
                      ),
                      prefixIcon: const Icon(Icons.email),
                      prefixIconColor: WidgetStateColor.resolveWith((states) =>
                          states.contains(WidgetState.focused)
                              ? Colors.deepPurple
                              : Colors.grey),
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Silahkan masukkan password';
                      }
                      return null;
                    },
                    cursorColor: Colors.deepPurple,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Colors.deepPurple),
                      ),
                      prefixIcon: const Icon(Icons.password),
                      prefixIconColor: WidgetStateColor.resolveWith((states) =>
                          states.contains(WidgetState.focused)
                              ? Colors.deepPurple
                              : Colors.grey),
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MainMenu(0)),
                      );
                    },
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                    },
                    child: const Center(
                      child: Text(
                        "Create New Account",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MainMenu(0)));
                    },
                    child: const Center(
                      child: Text(
                        "Back to Home",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ]))
          ],
        ),
      )),
    );
  }
}
