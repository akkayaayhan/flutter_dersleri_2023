import 'package:flutter/material.dart';
import 'package:flutter_dersleri_2023/day_10_row_column/app10_1_row.dart';
import 'package:flutter_dersleri_2023/day_12_card/app12_1_card.dart';
import '../day_13_ozel_widget_yapma/app13_1_custom_widget.dart';
import '../day_19_listView_builder/app19_1_listview.dart';

class TabBarAdvanced extends StatefulWidget {
  const TabBarAdvanced({Key? key}) : super(key: key);

  @override
  State<TabBarAdvanced> createState() => _TabBarAdvancedState();
}

class _TabBarAdvancedState extends State<TabBarAdvanced>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: () {
          _tabController.animateTo(_MyTabViews.home.index);
        }),
        bottomNavigationBar:
            BottomAppBar(notchMargin: _notchedValue, child: _myTabView()),
        body: _tabbarView(),
      ),
    );
  }

  TabBar _myTabView() {
    return TabBar(
        padding: EdgeInsets.zero,
        onTap: (int index) {},
        controller: _tabController,
        tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList());
  }

  TabBarView _tabbarView() {
    return TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          const RowYapisi(),
          CardYapisi(),
          OzelWidgetYapma(),
          ListViewYapisi()
        ]);
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}
