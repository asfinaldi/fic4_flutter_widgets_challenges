import 'package:flutter/material.dart';

class Fic4ButtonWidget extends StatelessWidget {
  const Fic4ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC 4 - Button Widget'),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadowColor: Colors.grey,
              elevation: 5.0,
            ),
            child: const Text(
              'Add To Chart',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
