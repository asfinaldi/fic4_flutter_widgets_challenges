import 'package:flutter/material.dart';

class Fic4ExpandedWidget extends StatelessWidget {
  const Fic4ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fic4 - Expanded Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'List Checllist',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Icon(Icons.check, color: Colors.blue)
              ],
            )
          ],
        ),
      ),
    );
  }
}
