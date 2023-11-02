// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:avacado_proj/screens/gridview.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> with TickerProviderStateMixin {
 

//List of tabs
  List<Tab> myTabs = <Tab>[
    Tab(
        child: Text(
      "Trending",
      style: TextStyle(color: Colors.black),
    )),
    Tab(
        child: Text(
      "Trending",
      style: TextStyle(color: Colors.black),
    )),
    Tab(
        child: Text(
      "Trending feature",
      style: TextStyle(color: Colors.black),
    )),
    Tab(
        child: Text(
      "Trending",
      style: TextStyle(color: Colors.black),
    )),
    Tab(
        child: Text(
      "Trending",
      style: TextStyle(color: Colors.black),
    )),
  ];
  @override
  Widget build(BuildContext context) {
    TabController tabBarController =
        TabController(length: myTabs.length, vsync: this);

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.green,
        leading: IconButton(
            onPressed: () {Navigator.pop(context);},
            icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Colors.white,
            )),
        title: Text(
          'Video',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
      body: Column(
        children: [
          Card(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(0)),
            child: TabBar(
              indicatorColor: Colors.green,
              labelColor: Colors.black,
              tabs: myTabs,
              controller: tabBarController,
              isScrollable: true,
            ),
          )),
          Expanded(
              child: TabBarView(controller: tabBarController, children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Grid(),
                ),
          
          ]))
        ],
      ),
    );
  }
}
