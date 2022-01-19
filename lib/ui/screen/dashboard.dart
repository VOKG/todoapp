import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/data/Data.dart';
import 'package:todoapp/model/CardDetail.dart';
import 'package:todoapp/state/tabBarChange.dart';
import 'package:todoapp/ui/screen/list_title_ui.dart';
import 'package:todoapp/ui/screen/widget/Utils.dart';
import 'package:todoapp/ui/screen/widget/dismissible_widget.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> {


  ScrollController controller = ScrollController();

  List<Widget> itemsData = [];


  @override
  void initState() {
    super.initState();


// иницилизация списка


   // getDataListCard(list);
  }
  @override
  void didChangeDependencies() {
    super. didChangeDependencies();

  }


  getDataListCard(){

   // final listDBTodo = Provider.of<DataChange>(context,listen: false).data;

    List<dynamic> listData = DATA_CARD_DETAIL;

    final list = listData.map(
            (data) =>
            CardModel(
                title: data["title"],
                subtitle: data["subtitle"],
                isChecked: data["isChecked"]

            )
    ).toList();

  setState(() {
    itemsData = list;
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

    //context.read<DataChange>().getData()

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

  void addTaskList() {
    CardModel cardTask = CardModel(
        title: 'title ${itemsData.length}',
        subtitle: 'subtitle ${itemsData.length}',
        isChecked:'isChecked ${itemsData.length}'
    );
setState((){
  itemsData.add(cardTask);
});


  }



  @override
  Widget build(BuildContext context) {
    // DataChange dataChange = Provider.of<DataChange>(context);
    //SafeArena
    Provider.of<DataChange>(context,listen: true).data;

         return Scaffold(
            backgroundColor: Theme
                .of(context)
                .scaffoldBackgroundColor,
            body: Container(
              child: Column(
                children: [
                  Expanded(flex: 4,
                      child: ListViewTask()
                  ),
                ],
              ),
            ),

            floatingActionButton: FloatingActionButton(
              onPressed:addTaskList,
           //context.read<DataChange>();
                // Provider.of<DataChange>(context,listen: true).addTaskList();

              backgroundColor: Theme
                  .of(context)
                  .primaryColorLight,
              child: Icon(
                Icons.add,
              ),

            ),

          );

  }



}

class ListViewTask extends StatefulWidget{
  const ListViewTask({Key? key}) : super(key: key);

  @override
  _ListViewTaskState createState() => _ListViewTaskState();
}

class _ListViewTaskState extends State<ListViewTask > {

@override
  Widget build(BuildContext context) {
    return Consumer<DataChange>(
        builder: (context, dataChange, child) {
       return ListView.separated(
          // длина списка листа данных
           // controller: controller,
            itemCount: dataChange.getDataReadMap().length,
            separatorBuilder: (context, index) =>
            //Делитель
            Divider(
              height: 1,
            ),
            itemBuilder: (context, index) {
            //  final itemList =  dataChange.getDataReadMap()[index];
              return  CardView(index);

              // виджет удаления и сохранения
            /*  return DismissibleWidget(
                item: itemList,
                // контейнер для содержимого
                child: itemsDataget[index],
                onDismissed: (direction) => dismissItem(context, index, direction),
              );*/
            }
        );
  }
  );

  }
//method generation list

}


