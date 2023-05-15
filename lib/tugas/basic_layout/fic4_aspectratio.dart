import 'package:flutter/material.dart';

class Fic4AspectRatio extends StatelessWidget {
  const Fic4AspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fic4 Aspectratio'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 180 / 240,
              child: Container(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
