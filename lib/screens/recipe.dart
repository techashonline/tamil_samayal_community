import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class recipe extends StatefulWidget {
  const recipe({super.key});

  @override
  State<recipe> createState() => _recipeState();
}

class _recipeState extends State<recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
    );
  }
}
