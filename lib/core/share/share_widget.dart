import 'package:flutter/material.dart';
import 'package:flutter_projects/core/bottomsheet_modal_widget.dart';
import 'package:flutter_projects/core/list_builder_list.dart';

class ShareWidgetClass{
  static List<String> cardPinList = ["***","***","***","8547"];
  
// page no-15, page name:history; list heading====================
static Widget HistoryHeadingFun(String title){
  return Container(
    padding: EdgeInsets.all(10.0),
    alignment: Alignment.centerLeft,
    child: Text("$title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
  );
}






//FIRST LIST VIEW PAGE -15 PAGE NAME:HISTORY==========

  static Widget HistoryFirstListFun(){
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: ListBuilderListClass.recentTransactionList.length,
      itemBuilder: (context,index){
        return ListTile(
          leading: Container(
            child: CircleAvatar(
              child: Image.asset(ListBuilderListClass.recentTransactionList[index].assetImgPath),

            ),
          ),
          title: Container(
            child: Text(ListBuilderListClass.recentTransactionList[index].name),
          ),
          subtitle: Container(
            child: Text(ListBuilderListClass.recentTransactionList[index].details),
          ),
          trailing: Container(
            child: Text(ListBuilderListClass.recentTransactionList[index].values,style: TextStyle(color: Colors.black),),
          ),
        );
      },
    );
  }
  static Widget HistorySecondListFun(){
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 2,
      itemBuilder: (context,index){
        return ListTile(
          leading: Container(
            child: CircleAvatar(
              child: Image.asset(ListBuilderListClass.recentTransactionList[index].assetImgPath),

            ),
          ),
          title: Container(
            child: Text(ListBuilderListClass.recentTransactionList[index].name),
          ),
          subtitle: Container(
            child: Text(ListBuilderListClass.recentTransactionList[index].details),
          ),
          trailing: Container(
            child: Text(ListBuilderListClass.recentTransactionList[index].values,style: TextStyle(color: Colors.black),),
          ),
        );
      },
    );
  }
  static Widget HistoryThirdListFun(){
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: ListBuilderListClass.recentTransactionList.length,
      itemBuilder: (context,index){
        return ListTile(
          leading: Container(
            child: CircleAvatar(
              child: Image.asset(ListBuilderListClass.recentTransactionList[index].assetImgPath),

            ),
          ),
          title: Container(
            child: Text(ListBuilderListClass.recentTransactionList[index].name),
          ),
          subtitle: Container(
            child: Text(ListBuilderListClass.recentTransactionList[index].details),
          ),
          trailing: Container(
            child: Text(ListBuilderListClass.recentTransactionList[index].values,style: TextStyle(color: Colors.black),),
          ),
        );
      },
    );
  }




  // page no-17, page name:history; list heading====================
  static Widget CardListTile(String leading,String trailing){
    return ListTile(
      leading: Container(child: Text("$leading",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
      trailing: Container(child: Text("$trailing",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
    );
  }



  //SHARE HORIZONTAL WIDGET LIST BUILDER LIST VIEW
  static Widget CardPinListView(){
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ShareWidgetClass.cardPinList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 25,),
            padding: EdgeInsets.only(right: 10),
            child: Text(
              ShareWidgetClass.cardPinList[index],
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          );
        });
  }
}