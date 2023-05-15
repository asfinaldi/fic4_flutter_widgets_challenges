import 'package:flutter/material.dart';

class Fic4TabbarWidget extends StatefulWidget {
  const Fic4TabbarWidget({super.key});

  @override
  State<Fic4TabbarWidget> createState() => _Fic4TabbarWidgetState();
}

class _Fic4TabbarWidgetState extends State<Fic4TabbarWidget> 
with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Tabbar'),
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(
            icon: Icon(Icons.directions_boat),
          ),
          Tab(
            icon: Icon(Icons.directions_bus),
          ),
          Tab(
            icon: Icon(Icons.directions_ferry),
          )
        ]),
      ),
      body: TabBarView(controller: _tabController, children: const [
        Center(
          child: Text('Tab 1'),
        ),
        Center(
          child: Text('Tab 2'),
        ),
        Center(
          child: Text('Tab 3'),
        )
      ]),
    );
  }
}
