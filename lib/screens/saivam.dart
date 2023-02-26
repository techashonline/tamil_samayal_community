import 'package:flutter/material.dart';
import 'package:tamil_recipe_book/screens/recipe.dart';

class saivam extends StatefulWidget {
  const saivam({super.key});

  @override
  State<saivam> createState() => _saivamState();
}

class _saivamState extends State<saivam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("சைவம்"),
      ),
      body: SingleChildScrollView(
        child: InkWell(
          onTap: (() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => recipe()));
          }),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
