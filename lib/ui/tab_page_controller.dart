
import 'package:flutter/material.dart';
import 'package:todoapp/ui/screen/dashboard.dart';

class TabPageController extends StatefulWidget {
   TabPageController({Key? key}) : super(key: key);

  @override
  _TabPageControllerState createState() => _TabPageControllerState();
}

class _TabPageControllerState extends State<TabPageController> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  late ScrollController _scrollViewController;


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
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return<Widget> [
                  SliverAppBar(
                    shadowColor: Colors.black,
                    backgroundColor: Colors.teal,
                    forceElevated: innerBoxIsScrolled ,
                    expandedHeight: 120.0,
                    pinned: true,
                    floating: true,
              ),
            ];
          },
            body:TabBarView(
                children: <Widget>
                [
                  Dashboard(),
                  Dashboard(),
                  Dashboard(),
                  Dashboard(),

                ]
            ) ,
          ),
          bottomNavigationBar:Container(
           
          decoration:BoxDecoration(
            //color: Colors.black54,
            gradient: LinearGradient(
                colors: [
                  Colors.teal,
                  Colors.lightGreen,
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
            isScrollable: false,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 6,
            indicator: BoxDecoration(
              boxShadow:[
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 6,
                  offset: Offset(7, 1), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.black38,
            ),
            tabs:
            [
              Tab(icon:Icon(Icons.wifi_rounded,size: 20.0,color: Colors.greenAccent,),),
              Tab(icon:Icon(Icons.account_box_sharp,color: Colors.redAccent,),),
              Tab(icon:Icon(Icons.app_registration,color: Colors.yellowAccent),),
              Tab(icon:Icon(Icons.view_list,color: Colors.lightBlue),),
            ],
          ),
          )
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