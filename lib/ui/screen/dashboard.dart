import 'package:flutter/material.dart';
import 'package:todoapp/data/Card.dart';
import 'package:todoapp/data/Data.dart';
import 'package:todoapp/model/CardDetail.dart';
import 'package:todoapp/res/values/constants_colors.dart';
import 'package:todoapp/ui/screen/widget/Utils.dart';
import 'package:todoapp/ui/screen/widget/dismissible_widget.dart';
import 'card_list_tile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  ScrollController controller = ScrollController();

  List<Widget> itemsData = [];

  void getDataListCard() {
    List<dynamic> listData = DATA_CARD_DETAIL;
    List<Widget> listItems = [];
    listData.forEach((data) {
      listItems.add(CardListTitle(
          titleCard: data["title"],
          subtitleCard: data["subtitle"],
          isChecked: data["isChecked"]));
      });
    setState(() {
      itemsData = listItems;
    });
  }

  // функция добавления и удаления
  void dismissItem(
      BuildContext context,
      int index,
      DismissDirection direction,
      ) {
    setState(() {
      itemsData.removeAt(index);
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

  void _addButton() {

    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    getDataListCard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).accentColor,
        child: Column(
          children: [
            Expanded(flex: 4,
                child: buildListViewTask(controller, itemsData)
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: _addButton,
        child: Icon(
          Icons.add,
          color: Colors.greenAccent,
        ),
      ),
    );
  }


  //method generation list
  ListView  buildListViewTask(ScrollController controller, List itemsData ) {
    return ListView.separated(
        // длина списка листа данных
      controller: controller,
        itemCount: itemsData.length,
        separatorBuilder: (context, index) =>
            //Делитель
            Divider(
              height: 1,
              color: Colors.black,
            ),
        itemBuilder: (context, index) {
          final itemList =itemsData[index];
          // виджет удаления и сохранения
          return DismissibleWidget(
            item: itemList,
            // контейнер для содержимого
            child:itemsData[index],
            onDismissed: (direction) => dismissItem(context, index, direction),
          );
        });
  }
}
