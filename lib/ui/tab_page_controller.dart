import 'package:flutter/material.dart';
import 'package:todoapp/res/values/constants_colors.dart';
import 'package:todoapp/res/values/styles.dart';
import 'package:todoapp/ui/screen/dashboard.dart';
import 'package:todoapp/ui/widget/drawer_widjet.dart';
import 'AppBarWidget/my_flexiable_app_bar.dart';

class TabPageController extends StatefulWidget {
  TabPageController({Key? key}) : super(key: key);

  @override
  _TabPageControllerState createState() => _TabPageControllerState();
}

class _TabPageControllerState extends State<TabPageController>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollViewController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


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

    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: myDrawer(context),
          key: _scaffoldKey,
          backgroundColor: Theme.of(context).accentColor,
          body: NestedScrollView(
            controller: _scrollViewController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  shadowColor: COLOR_YELLOW,
                  backgroundColor: COLOR_INDIGO_500,
                  title: Text('TodoCardManager',
                    style: TextStyle(
                      color:Colors.black87,
                      fontSize: 22.0,
                    ),
                  ),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.access_alarms_rounded)),
                  ],
                  forceElevated: innerBoxIsScrolled,
                  expandedHeight: 120.0,
                  pinned: true,
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: MyFlexiableAppBar(),
                  ),
                ),
              ];
            },
            body: TabBarView(children: <Widget>[
              Dashboard(),
              Dashboard(),
              Dashboard(),
              Dashboard(),
            ]),
          ),
          bottomNavigationBar: Container(
            decoration:myBoxDecoration02(context),
            child: TabBar(
              padding: EdgeInsets.all(4.0),
              isScrollable: false,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 1,
              indicator:myBoxDecoration01(),
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.wifi_rounded,
                    size: 20.0,
                    color: Colors.greenAccent,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.account_box_sharp,
                    color: Colors.greenAccent,
                  ),
                ),
                Tab(
                  icon:
                      Icon(Icons.app_registration, color: Colors.greenAccent),
                ),
                Tab(
                  icon: Icon(Icons.view_list, color: Colors.greenAccent),
                ),
              ],
            ),
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
