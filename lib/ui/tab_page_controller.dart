import 'package:flutter/material.dart';
import 'package:todoapp/res/theme/config.dart';
import 'package:todoapp/res/values/styles.dart';
import 'package:todoapp/ui/screen/dashboard.dart';
import 'package:todoapp/ui/screen/list_title_ui.dart';
import 'package:todoapp/ui/widget/drawer_widjet.dart';
import 'AppBarWidget/my_flexiable_app_bar.dart';




class TabPageController extends StatefulWidget {
 const TabPageController({Key? key}) : super(key: key);

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
          body: NestedScrollView(
            controller: _scrollViewController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  title: Text('Todo Card Manager',
                    style:Theme.of(context).textTheme.headline6,
                  ),
                  actions: [

                    IconButton(
                      icon: const Icon(Icons.brightness_4),
                      onPressed: () => currentTheme.toggleTheme(),
                    ),
                    IconButton(
                        onPressed: (){
                          _scaffoldKey.currentState!.showSnackBar(
                              SnackBar(content: Text('12345'),)
                          );
                        },
                        icon: Icon(Icons.brightness_5_rounded))

                  ],
                  backgroundColor: Theme.of(context).primaryColorLight,
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
              //padding: EdgeInsets.all(4.0),
              isScrollable: false,
             // indicatorSize: TabBarIndicatorSize.tab,
             // indicatorWeight: 1,
              //indicator:myBoxDecoration01(context),
              labelColor: Theme.of(context).bottomAppBarColor,
              unselectedLabelColor:  Theme.of(context).backgroundColor,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.wifi_rounded),
                ),
                Tab(
                  icon: Icon(
                    Icons.account_box_sharp),
                ),
                Tab(
                  icon:
                      Icon(Icons.app_registration)
                ),
                Tab(
                  icon: Icon(Icons.view_list),
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
