import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tamil_recipe_book/services/firebase_service.dart';

import 'home.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "சமையல் ருசி",
            style: TextStyle(color: Colors.white),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Image.asset("assets/images/login1.png"),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: MaterialButton(
              onPressed: () async {
                FirebaseService.continueWithGoogle();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const home()));
              },
              color: Colors.white,
              minWidth: double.infinity,
              height: 50,
              child: const Text(
                "Continue with Google",
                style: TextStyle(color: Colors.pink),
              ),
            ),
          )
        ],
      ),
    );
  }
}
