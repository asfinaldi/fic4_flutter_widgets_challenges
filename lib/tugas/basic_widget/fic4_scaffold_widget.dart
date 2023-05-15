import 'package:flutter/material.dart';

class Fic4ScaffoldWidget extends StatelessWidget {
  const Fic4ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('FIC4 - Scaffold, AppBar'),
      ),
      body: const Center(
        child: Text('You have presses the button 0 times'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
        Icons.add,
        size: 24.0,
        ),
      ),
    );
  }
}
