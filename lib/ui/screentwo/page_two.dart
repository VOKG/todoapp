import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: Row(
          children: [
            Container(
              height: 100,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}


class CategoriesScroller extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: Row(
          children: [
            Container(
              height: 100,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

}