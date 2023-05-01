import 'package:flutter/material.dart';

class TabbarYapisi extends StatefulWidget {
  const TabbarYapisi({super.key});

  @override
  State<TabbarYapisi> createState() => _TabbarYapisiState();
}

class _TabbarYapisiState extends State<TabbarYapisi>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabbar Yapısı'),
        bottom: TabBar(controller: _tabController, tabs: [
          Tab(
            icon: Icon(Icons.home),
            text: 'Home',
          ),
          Tab(
            icon: Icon(Icons.search),
            text: 'Search',
          ),
          Tab(
            icon: Icon(Icons.person),
            text: 'Profile',
          )
        ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        Center(
          child: Text('Home Page'),
        ),
        Center(
          child: Text('Search Page'),
        ),
        Center(
          child: Text('Profile Page'),
        ),
      ]),
    );
  }
}
