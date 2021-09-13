import 'package:flutter/material.dart';
import 'package:todoapp/res/values/colors.dart';

import 'card_list_tile.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<CardDetail> cards = [
    CardDetail(title: 'Map Tutorial', subtitle: 'Basic',isChecked:false),
    CardDetail(title: 'Provider', subtitle: 'Intermediate',isChecked:false),
    CardDetail(title: 'Fold Tutorial', subtitle: 'Basic',isChecked:false),
    CardDetail(title: 'Cubit', subtitle: 'Intermediate', isChecked:false),
  ];
int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Column(
        children: [
          Expanded(
            flex: 3,

           child: ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) => Dismissible(
                key: key,
                child:  CardListTile(
                titleCard: cards[index].title,
                subtitleCard: cards[index].subtitle,
                isChecked: cards[index].isChecked,
              ),
                onDismissed: (){
                  setState(() {
                    cards.removeAt(index);
                  });
                },
              ),
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
                    deleteCard();
                  });


                    //TODO: Shuffle all cards and change the order of them in the UI


                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  void deleteCard(){
    if(  cards[index].isChecked = true){
      cards.removeAt(index);
    }

  }
}



class CardDetail {
  String title;
  String subtitle;
  bool isChecked;

  CardDetail({required this.title, required this.subtitle,required this.isChecked});
}