import 'package:flutter/material.dart';

class FicContainerWidget extends StatelessWidget {
  const FicContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Container'),
      ),
      body: Container(
        height: 600,
        width: double.infinity,
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset.zero,
              blurRadius: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
