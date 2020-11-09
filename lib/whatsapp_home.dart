import 'package:flutter/material.dart';
import 'package:healthtest/pages/stressQuestionScreen.dart';
import 'package:healthtest/pages/guiltScreen.dart';
import 'package:healthtest/pages/colereScreen.dart';


class WhatsAppHome extends StatefulWidget {
  // final List<CameraDescription> cameras;
  WhatsAppHome();

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 0, length: 3);
    // _tabController.addListener(() {
    //   if (_tabController.index == 1) {
    //     showFab = true;
    //   } else {
    //     showFab = false;
    //   }
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tests santé", style: TextStyle(fontFamily: 'Goldman'),),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            // Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "STRESS"),
            Tab(
              text: "COLERE",
            ),
            Tab(
              text: "CULPABILITE",
            ),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          // CameraScreen(widget.cameras),
          StressScreen(),
          ColereScreen(),
          GuiltScreen(),
        ],
      ),
    );
  }
}