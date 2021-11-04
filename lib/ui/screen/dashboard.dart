import 'package:flutter/material.dart';
import 'package:todoapp/data/Card.dart';
import 'package:todoapp/model/CardDetail.dart';
import 'package:todoapp/ui/screen/widget/Utils.dart';
import 'package:todoapp/ui/screen/widget/dismissible_widget.dart';

import 'card_list_tile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<CardDetail> cards = CardData().cards;
  @override
  Widget build(BuildContext context) {
    return  Container(
     child: Column(
        children: [
          Expanded(
            flex: 4,
           child: ListView.separated(
              itemCount: cards.length,
              separatorBuilder: (context, index) =>
                  Divider(
                    height: 4,
                  ),
             itemBuilder:(context, index){
                final itemList = cards[index];
                return  DismissibleWidget(
                  item: itemList,
                  child:CardListTitle(
                    titleCard: cards[index].title,
                    subtitleCard: cards[index].subtitle,
                    isChecked: cards[index].isChecked,// not working
                  ),
                  onDismissed: ( direction ) => dismissItem(context, index, direction),
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

              ],
            ),
          )
        ],
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


