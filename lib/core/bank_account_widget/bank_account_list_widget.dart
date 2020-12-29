import 'package:flutter/material.dart';
import 'package:flutter_projects/core/list_builder_list.dart';
class BankAccountWidgetClass {


  //bank account listview============================
  static Widget bankAccountWidget(){
    return Container(
      decoration: BoxDecoration(

      ),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: ListBuilderListClass.bankAccounWidgetlist.length,
          itemBuilder: (context,index){
            return Card(
              color: Color(0xffeef7fb),
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.asset(ListBuilderListClass.bankAccounWidgetlist[index].assetImgPath),
                  backgroundColor: Colors.white,
                ),
                title: Container(
                  child: Text(ListBuilderListClass.bankAccounWidgetlist[index].name),
                ),
                subtitle: Container(
                  child: Text(ListBuilderListClass.bankAccounWidgetlist[index].details),
                ),
                trailing: CircleAvatar(
                  child: Icon(ListBuilderListClass.bankAccounWidgetlist[index].iconData),
                ),
              ),
            );
          }),
    );
  }

}
