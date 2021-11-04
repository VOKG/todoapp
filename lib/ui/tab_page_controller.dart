
import 'package:flutter/material.dart';
import 'package:todoapp/data/Card.dart';
import 'package:todoapp/model/CardDetail.dart';
import 'package:todoapp/ui/screen/dashboard.dart';
import 'package:todoapp/ui/screentwo/page_two.dart';
import 'package:todoapp/ui/screentwo/shop.dart';

import 'AppBarWidget/my_flexiable_app_bar.dart';

class TabPageController extends StatefulWidget {
   TabPageController({Key? key}) : super(key: key);

  @override
  _TabPageControllerState createState() => _TabPageControllerState();
}

class _TabPageControllerState extends State<TabPageController> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  late ScrollController _scrollViewController;

  List<CardDetail> cards = CardData().cards;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _scrollViewController = ScrollController();

  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
    child:DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: NestedScrollView(
            controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return<Widget> [
                  SliverAppBar(
                    shadowColor: Colors.blueGrey,
                    backgroundColor: Colors.black,
                    title: Text('STREAMSOUND'),
                    leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                    actions: [
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.access_alarms_rounded)),],
                    forceElevated: innerBoxIsScrolled ,
                    expandedHeight: 120.0,
                    pinned: true,
                    floating: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: MyFlexiableAppBar(),
                    ) ,

              ),
            ];
          },
            body:TabBarView(
                children: <Widget>
                [
                  Dashboard(),
                  PageTwo(),
                  Dashboard(),
                  Shop(),


                ]
            ) ,
          ),
          bottomNavigationBar:Container(

          decoration:BoxDecoration(
            //color: Colors.black54,
            gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black,
                ],
                begin: Alignment.center,
                end: Alignment.bottomRight
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(2, 9), // changes position of shadow
              ),
            ],

          ),
          child: TabBar(
            padding: EdgeInsets.all(4.0),
            isScrollable: false,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 1,
            indicator: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 1
              ),
              boxShadow:[
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 6,
                  offset: Offset(4, 4), // changes position of shadow
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 6,
                  offset: Offset(-4, -4), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(5),
              color: Colors.black38,
            ),
            tabs:
            [
              Tab(
                icon:Icon(
                Icons.wifi_rounded,
                size: 20.0,
                color: Colors.greenAccent,
                 ),
              ),
              Tab(
                icon:Icon(
                  Icons.account_box_sharp,
                  color: Colors.redAccent,
                ),
              ),
              Tab(
                icon:Icon(
                    Icons.app_registration,
                    color: Colors.yellowAccent
                ),
              ),
              Tab(
                icon:Icon(
                    Icons.view_list,
                    color: Colors.lightBlue
                ),
              ),
            ],
          ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              cards.add(
                  CardDetail(
                      title: 'Unit Testing',
                      subtitle: 'Intermediate',
                      isChecked:false));
              setState(() {}
              );
            },
            child: Icon(Icons.add),
          ),
        ),
    ),
        );
  }
}
/* appBar: AppBar(
            elevation: 4,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.attach_file_sharp)
              )
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.teal,
                        Colors.lightGreen,
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.center
                  )
              ),
            ),
          ),*/