import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:tamil_recipe_book/screens/home.dart';
import 'package:tamil_recipe_book/screens/login.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        debugShowCheckedModeBanner: false,
        home: const setHome());
  }
}

class setHome extends StatefulWidget {
  const setHome({super.key});

  @override
  State<setHome> createState() => _setHomeState();
}

class _setHomeState extends State<setHome> {
  Widget mypage = Container();
  checkLoggedin() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    if (sharedPreferences.containsKey("loggedin")) {
      if (sharedPreferences.getBool("loggedin") == true) {
        setState(() {
          mypage = const home();
        });
      } else {
        setState(() {
          mypage = const login();
        });
      }
    } else {
      setState(() {
        mypage = const login();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    checkLoggedin();
  }

  @override
  Widget build(BuildContext context) {
    return mypage;
  }
}
