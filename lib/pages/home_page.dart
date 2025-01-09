import 'package:flutter/material.dart';
import 'package:my_deliveries/components/my_tab_bar.dart';

import '../components/my_current_location.dart';
import '../components/my_description_box.dart';
import '../components/my_drawer.dart';
import '../components/my_silver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
     super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                //my const current location
                const MyCurrentLocation(),

                const //description box
                MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller:  _tabController,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index)=>Text('hello'),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index)=>Text('hello'),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index)=>Text('hello'),
            ),
          ],
        )
      ),
    );
  }
}
