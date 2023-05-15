import 'package:flutter/material.dart';

class Fic4TextWidget extends StatelessWidget {
  const Fic4TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' FIC 4 : Text Widget'),
        actions: const [],
      ),
      body: Column(
        children: const [
          Text('Discover the most modern furniture',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),)
          
        ],
      ),
    );
  }
}