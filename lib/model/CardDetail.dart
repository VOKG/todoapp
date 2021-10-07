class CardDetail {
 final String title;
 final  String subtitle;
 final bool isChecked;

  const CardDetail({required this.title, required this.subtitle,required this.isChecked});
}


class CardTodo {
 final String title;
 final int number;
 CardTodo(this.title,this.number);
}





class CardModelData {

 final List<CardTodo> listModels;
 final String categoryName;
 double position = 0;

 CardModelData(this.categoryName,this.listModels);

}