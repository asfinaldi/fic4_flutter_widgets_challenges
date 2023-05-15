import 'package:flutter/material.dart';

class Fic4ImageWidget extends StatelessWidget {
  const Fic4ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.center,
          child: Text('FIC4 Icon Button'),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                'assets/images/furniture/img_product_2.png',
                fit: BoxFit.fill,
                width: 200,
                
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Image.asset(
// "assets/icon/icon.png",
// width: 120.0,
// height: 120.0,
// fit: BoxFit.fill,
// ),