
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/res/values/styles.dart';
import 'package:todoapp/state/user_preference.dart';

Widget myDrawer(BuildContext context){
  final userPreferences = Provider.of<UserPreference>(context);
  return Drawer(
    child: Container(
     color: Theme.of(context).accentColor,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: myBoxDecoration03(),
              child:Container(
                height: 10,
                color: Theme.of(context).accentColor,
                child: Text(
                  'LOGO',
                  style: TextStyle(fontSize: 25),
                ),
              )
      ),

          ListTile(
            leading: Icon(
          Theme.of(context).brightness == Brightness.light
          ? Icons.brightness_4
              : Icons.brightness_high),
            title: Text('brightness',style: TextStyle(fontSize: 20),),
            onTap: (){
              Theme.of(context).brightness == Brightness.light
                  ? userPreferences.changePreferences(2)
                  : userPreferences.changePreferences(1);
            },
          ),
          CustomListTitle(Icons.person, 'Profile', ()=>{}),
          CustomListTitle(Icons.notifications, 'Notifications', ()=>{}),
          CustomListTitle(Icons.settings, 'Settings', ()=>{}),
          CustomListTitle(Icons.login, 'Login', ()=>{}),
        ],
      ),
    ),
  );
}
class CustomListTitle extends StatelessWidget{
 final IconData icon;
 final String text;
 final  Function onTap;
  CustomListTitle(this.icon,this.text,this.onTap);


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: InkWell(
        splashColor: Colors.greenAccent,
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top:BorderSide(
                color: Colors.black
              )
            )
          ),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon,color: Colors.black87,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,
                        style:TextStyle(
                            color:Colors.black87,
                            fontSize: 16.0)
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_back_ios)
            ],
          ),

        ),

      ),

    );
  }

}