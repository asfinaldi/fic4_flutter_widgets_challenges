import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/navigation/fic4_navigation_pop.dart';

class Fic4NavigatorPush extends StatefulWidget {
  const Fic4NavigatorPush({super.key});

  @override
  State<Fic4NavigatorPush> createState() => _Fic4NavigatorPushState();
}

class _Fic4NavigatorPushState extends State<Fic4NavigatorPush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC4 - Navigator Push'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const Fic4NavigationPop();
                  },
                ));
              },
              child: const Text('Go to next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
