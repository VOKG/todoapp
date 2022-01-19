import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoapp/data/Data.dart';
import 'package:todoapp/model/CardDetail.dart';
import 'package:todoapp/ui/screen/list_title_ui.dart';


class TabBarChange extends ChangeNotifier {
  int index = 0;

  void changeIndex(int val) {
    index = val;
    notifyListeners();
  }
}



TabBarChange tabBarNotifier = TabBarChange();

//////////////////////////////////////////////////////




class DataChange extends ChangeNotifier{

  List<CardModel> itemsData = [];



//fun

  List<CardModel> getDataReadMap() {

  List<dynamic> listData = DATA_CARD_DETAIL;

   final list = listData.map(
           (data) =>
           CardModel(
               title: data["title"],
               subtitle: data["subtitle"],
               isChecked: data["isChecked"]

           )
   ).toList();

  notifyListeners();

   return itemsData = list  ;


}


  List<CardModel> get data =>getDataReadMap();


  addTaskList(){

    CardModel cardTask = CardModel(
        title: 'title ${itemsData.length}',
        subtitle: 'subtitle ${itemsData.length}',
        isChecked:'isChecked ${itemsData.length}'
    );
    notifyListeners();

    itemsData.add(cardTask);



  }






//List<CardModel> get data => getData();



  //List<Widget> get listData => itemsData;
  // String get title => listData.elementAt(index).toString();

  //String get subtitle => listData.elementAt(index).toString();

  //String get isChecked => listData.elementAt(index).toString();


///////////////////////////////////////////////////////////////////////
 /* List<CardModel> getDataListCard() {

    List<CardModel> listItems = [];

    listData.forEach((data) {
      listItems.add( CardModel(
          title: data["title"],
          subtitle: data["subtitle"],
          isChecked: data["isChecked"]));
    });

    notifyListeners();

    return itemsData;

  }
*/
}

DataChange dataChange = DataChange();