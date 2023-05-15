import 'package:flutter/material.dart';

class Fic4RowWidget extends StatelessWidget {
  const Fic4RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC Row Widget'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12.0)
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.backspace),
                  ),
                ),
                const Text(
                  'Detail',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
