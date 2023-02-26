import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirebaseService {
  static continueWithGoogle() async {
    String? email = "";
    String? name = "";
    String? profileURL = "";
    final GoogleSignIn googleSignIn = GoogleSignIn();
    googleSignIn.signIn().then((value) => {
          email = value!.email,
          name = value.displayName,
          profileURL = value.photoUrl
        });
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setBool('loggedin', true);
    sharedPreferences.setString('email', email!);
    sharedPreferences.setString('name', name!);
    sharedPreferences.setString('profileURL', profileURL!);
  }
}
