import 'package:flutter/material.dart';
import 'package:foodapp/components/current%20location.dart';
import 'package:foodapp/components/discription%20box.dart';
import 'package:foodapp/components/drawer.dart';
import 'package:foodapp/components/silver%20app%20bar.dart';
import 'package:foodapp/components/tab%20bar.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _homePageState();

}

class _homePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  //tab controller
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

  }
  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled)=>[
            MySliverAppBar(
              title: MyTabBar(tabController: _tabController ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  // my current location
                  const MyCurrentLocation(),

                  //My Description box
                  const MyDescriptionBox(),
                ],
              ),

            )
          ],
          body:TabBarView(
                controller: _tabController,
                children: [
                            Text('HELLO'),
                            Text('flutter'),
                            Text('code'),
    ],
    ),
      ),
    );
  }
}