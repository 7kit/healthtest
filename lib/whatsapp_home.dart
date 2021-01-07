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
                      ? Image.asset('assets/british.png', width: 30, height: 30)
                      : Image.asset('assets/france.png', width: 30, height: 30),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          // Icon(Icons.more_vert)
          PopupMenuButton(itemBuilder: (BuildContext context){
             return[
               PopupMenuItem(child: InkWell(onTap: (){
                 showDialog(context: context, child:
                  new AlertDialog(
                    title: new Text(isFrench?'NOUS CONCERNANT':'ABOUT US', style: TextStyle(fontFamily: 'Goldman'),),
                    content: new Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(isFrench
                          ?"Cette application vous est presentée par Paroles d'Espérance, un ministère dédié à la restauration de l'homme dans tous ses états tant relationnel, émotionnel, physique et spirituel ! Ecrivez-nous aux numéros suivants pour en apprendre davantage : + 228 91 64 66 23/ + 22 8 98 83 98 41"
                          :"This application is brought to you by Words of Hope, a ministry dedicated to the restoration of man in all his relational, emotional, physical and spiritual states! Write to us at the following numbers to learn more: + 228 91 64 66 23 / + 22 8 98 83 98 41", style: TextStyle(fontFamily: 'Oswald')),
                        ),
                      ],
                    ),
                  )
                  );
               },
               child: Text(isFrench?'NOUS CONCERNANT':'ABOUT US', style: TextStyle(fontFamily: 'Goldman')),)),
             ];
          })
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