import 'package:flutter/material.dart';

class Fic4DrawerWidget extends StatefulWidget {
  const Fic4DrawerWidget({super.key});

  @override
  State<Fic4DrawerWidget> createState() => _Fic4DrawerWidgetState();
}

class _Fic4DrawerWidgetState extends State<Fic4DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Drawer'),
        actions: [],
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.blue,
              child: const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: FlutterLogo(
                    size: 50,
                  ),
                ),
                decoration: BoxDecoration(color: Colors.grey),
                accountName: Text('Sabo'),
                accountEmail: Text('sabo@gmail.com'),
              ),
            ),
            ListTile(
              title: const Text('Menu 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Menu 2'),
              onTap: () {},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(),
        ),
      ),
    );
  }
}
