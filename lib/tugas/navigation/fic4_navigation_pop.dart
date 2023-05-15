import 'package:flutter/material.dart';

class Fic4NavigationPop extends StatefulWidget {
  const Fic4NavigationPop({super.key});

  @override
  State<Fic4NavigationPop> createState() => _Fic4NavigationPopState();
}

class _Fic4NavigationPopState extends State<Fic4NavigationPop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Navigation Pop'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Go back (pop)'),
            ),
          ],
        ),
      ),
    );
  }
}
