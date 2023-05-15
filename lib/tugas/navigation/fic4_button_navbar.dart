import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Fic4ButtonNavbar extends StatefulWidget {
  const Fic4ButtonNavbar({super.key});

  @override
  State<Fic4ButtonNavbar> createState() => _Fic4ButtonNavbarState();
}

class _Fic4ButtonNavbarState extends State<Fic4ButtonNavbar> {
  int _selectedIndex = 0;
  final List<Widget> list = const [
    Text('Home'),
    Text('Cart'),
    Text('Favorite'),
    Text('User'),
  ];
  List<dynamic> menuItems = [
    {
      'icon': 'assets/icons/home_.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/cart_.svg',
      'label': 'Cart',
    },
    {
      'icon': 'assets/icons/favorite.svg',
      'label': 'Favorite',
    },
    {
      'icon': 'assets/icons/profile_.svg',
      'label': 'Profile',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Botton Bavbar'),
      ),
      body: Center(
        child: list[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black,
        elevation: 32.0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: menuItems.map(
          (i) {
            return BottomNavigationBarItem(
              activeIcon: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                ),
                child: SvgPicture.asset(
                  i['icon'],
                  color: Colors.white,
                ),
              ),
              icon: SvgPicture.asset(
                i['icon'],
                color: Colors.grey,
              ),
              label: i['label'],
            );
          },
        ).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
