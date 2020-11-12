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
  bool isFrench = true;

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
        title: Text(isFrench?"Tests santé":"Health Tests", style: TextStyle(fontFamily: 'Goldman'),),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            // Tab(icon: Icon(Icons.camera_alt)),
            Tab(text:"STRESS"),
            Tab(
              text: isFrench? "COLERE":"ANGER",
            ),
            Tab(
              text:isFrench? "CULPABILITE":"GUILT",
            ),
          ],
        ),
        actions: <Widget>[
          InkWell(
            onTap: (){
              setState(() {
                    isFrench = !isFrench;
                  });
            },
                      child: isFrench
                      ? Image.asset('assets/france.png', width: 30, height: 30)
                      : Image.asset('assets/british.png', width: 30, height: 30),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          // CameraScreen(widget.cameras),
          StressScreen(estFrench:isFrench,),
          ColereScreen(estFrench: isFrench,),
          GuiltScreen(estFrench: isFrench,),
        ],
      ),
    );
  }
}