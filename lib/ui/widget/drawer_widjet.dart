
import 'package:flutter/material.dart';
import 'package:todoapp/res/values/styles.dart';



Widget myDrawer(BuildContext context){

  return Drawer(
    child: Container(
      color:Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),

           //EdgeInsets.zero,
            decoration: myBoxDecoration03(context),
              child: Text(
                  'LOGO',
                  style:Theme.of(context).textTheme.headline6,
                ),

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
                  Icon(icon),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,
                        style:Theme.of(context).textTheme.headline2
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