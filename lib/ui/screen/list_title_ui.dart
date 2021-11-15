import 'package:flutter/material.dart';
import 'package:todoapp/res/values/constants_colors.dart';
import 'package:todoapp/res/values/styles.dart';
import 'package:todoapp/ui/screen/second_screen.dart';


class CardView extends StatefulWidget{
  CardView(this.subtitleCard,this.titleCard,this.isChecked);
 late String titleCard;
  late String subtitleCard;
   late String isChecked;


  @override
  _CardView createState() => _CardView(this.titleCard,this.subtitleCard,this.isChecked);
}
class _CardView extends State<CardView> {

  _CardView(this.subtitle,this.title,this.isChecked);

  late String title;
  late final String subtitle;

  late String isChecked;


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
        style:Theme.of(context).textTheme.headline3,
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.arrow_drop_down_circle,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            subtitle,
          style:Theme.of(context).textTheme.headline2,
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
      decoration: myBoxDecorationMyAvatar(),
      child:Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ava2.jpeg'),
            fit: BoxFit.cover
          )
        )
        // myBoxDecoration07(),

        //asset('assets/ava2.jpeg'),
      ),
    );
}