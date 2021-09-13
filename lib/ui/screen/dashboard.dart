import 'package:flutter/material.dart';
import 'package:todoapp/data/Data.dart';
import 'package:todoapp/model/CardDetail.dart';
import 'package:todoapp/res/values/colors.dart';
import 'package:todoapp/ui/screen/widget/Utils.dart';
import 'package:todoapp/ui/screen/widget/dismissible_widget.dart';

import 'card_list_tile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<CardDetail> cards = List.of(Data.listUser);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Container(
      decoration: BoxDecoration(
       gradient: LinearGradient(
          colors: [
            white,
            indigoColor
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
      )
      ),
     child: Column(
        children: [
          Expanded(
            flex: 3,

           child: ListView.separated(
              itemCount: cards.length,
              separatorBuilder: (context, index) => Divider(),
             itemBuilder:(context, index){
                final itemList = cards[index];
                return  DismissibleWidget(
                  item: itemList,
                  child:CardListTile(
                    titleCard: cards[index].title,
                    subtitleCard: cards[index].subtitle,
                    isChecked: cards[index].isChecked,
                  ),
                  onDismissed: ( direction) => dismissItem(context, index, direction),
                );
             }
            ),
          ),
          Expanded(
            flex: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: Text('Add Card'),
                  onPressed: () {
                    //TODO: Add a new card to cards with title 'Unit Testing' and subtitle of 'Intermediate'.
                    cards.add(CardDetail(
                        title: 'Unit Testing', subtitle: 'Intermediate', isChecked:false));
                    setState(() {});
                  },
                ),
                ElevatedButton(
                  child: Text('Shuffle Cards'),
                  onPressed: () {


                  setState(() {

                  });


                    //TODO: Shuffle all cards and change the order of them in the UI


                  },
                )
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
  void dismissItem(
      BuildContext context,
      int index,
      DismissDirection direction,
      ) {
    setState(() {
      cards.removeAt(index);
    });

    switch (direction) {
      case DismissDirection.endToStart:
        Utils.showSnackBar(context, 'Chat has been deleted');
        break;
      case DismissDirection.startToEnd:
        Utils.showSnackBar(context, 'Chat has been archived');
        break;
      default:
        break;
    }
  }



}


