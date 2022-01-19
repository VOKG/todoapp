import 'package:flutter/cupertino.dart';

class CardModel extends StatelessWidget{
 String title;
  String subtitle;
 String isChecked;

   CardModel({required this.title, required this.subtitle,required this.isChecked});
  
  String get titleGet => title;
 String get subtitleGet => subtitle;
 String get isCheckedGet => isChecked;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }




 /* factory CardModel.fromJson(Map<String, dynamic>  json){

   return CardModel(
       title: json["title"] ,
       subtitle: json["subtitle"],
       isChecked: json["isChecked"]);
  }*/


}


class CardTodo {
 final String title;
 final int number;
 CardTodo(this.title,this.number);
}





class CardModelData {


 //final CardModel listModels;


 CardModelData();



}

