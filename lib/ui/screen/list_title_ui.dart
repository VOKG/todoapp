import 'package:flutter/material.dart';
import 'package:todoapp/res/values/colors.dart';
import 'package:todoapp/res/values/imageData.dart';
import 'package:todoapp/ui/screen/second_screen.dart';


class ListTitleUi extends StatefulWidget{
  ListTitleUi(this.subtitleCard,this.titleCard,this.isChecked);
 late String titleCard;
  late String subtitleCard;
   bool isChecked = false;


  @override
  _ListTitleUi createState() => _ListTitleUi(this.titleCard,this.subtitleCard,this.isChecked);
}
class _ListTitleUi extends State<ListTitleUi> {

  _ListTitleUi(this.subtitle,this.title,this.isChecked);

  late String title;
  late final String subtitle;

  bool isChecked = false;


  @override
  Widget build(BuildContext context) {

    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 1.0,
        vertical: 5.0,
      ),
      leading:
     MyAvatar(),
     // CircleAvatar(backgroundImage:ava, radius: 40,),

      title: Text(
        title,
        style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.arrow_drop_down_circle,
            color: Colors.black38,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            subtitle,
            style: TextStyle(color: Colors.white),
          ),

        ],
      ),
      onTap: () =>
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondScreen(title: title,subtitle: subtitle,))
          ),
      isThreeLine: true,
      dense: true,
      trailing: Icon(
        Icons.keyboard_arrow_left,
        color: Colors.black54,
        size: 30.0,
      ),

    );
  }
}

class MyAvatar extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Container(
      height: 40,
      width: 40,
      margin: EdgeInsets.only(left: 25, top: 1, right: 8, bottom: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white70.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],


      ),
      child:CircleAvatar(
        foregroundColor: Colors.black,
        radius: 40,
      ),
    );
}