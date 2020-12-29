import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/core/bottomsheet_modal_widget.dart';
import 'package:flutter_projects/core/share/share_widget.dart';
import 'package:flutter_projects/views/card_page.dart';
import 'package:get/get.dart';
class FilterHistoryClass extends StatelessWidget {


  //modal bottom sheet for last history============================
   void displayBottomSheet(BuildContext context) {
      showModalBottomSheet(
          context: context,
          builder: (ctx) {
            return Container(

              // height: MediaQuery.of(context).size.height  * 0.4,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ModalBottomSheetClass.ModalBottomSheet(),
            );
          });
    }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              //modal bottom sheet floating action button============


              //appbar listTile widget===============================
              Container(
                alignment: Alignment.topLeft,
                child: ListTile(
                  leading: Container(
                    child: Text("History",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.only(top: 10),
                    child: FloatingActionButton(
                      onPressed:() =>  displayBottomSheet(context),
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),



              Expanded(
                child:InkWell(
                  onTap: (){
                    Get.to(CardPage());
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        //listTile heading widget=======================
                        ShareWidgetClass.HistoryHeadingFun("November 12, Tuesday"),
                        //First listview widget=================================
                        InkWell(
                          onTap: (){
                            Get.to(CardPage());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffeef7fb),
                              borderRadius: BorderRadius.circular(26),
                            ),
                            height: 160,
                            child: ShareWidgetClass.HistoryFirstListFun(),
                          ),
                        ),



                        //second list view heading====================
                        ShareWidgetClass.HistoryHeadingFun("November 15, Monday"),
                        //second listview widget=================================
                        InkWell(
                          onTap: (){
                            Get.to(CardPage());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffeef7fb),
                              borderRadius: BorderRadius.circular(26),
                            ),
                            height: 150,
                            child: ShareWidgetClass.HistorySecondListFun(),
                          ),
                        ),



                        //third list view heading====================
                        ShareWidgetClass.HistoryHeadingFun("November 20, Wednesday"),
                        //First listview widget=================================
                        InkWell(
                          onTap: (){
                            Get.to(CardPage());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffeef7fb),
                              borderRadius: BorderRadius.circular(26),
                            ),
                            height: 150,
                            child: ShareWidgetClass.HistoryThirdListFun(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],





          ),
        ),
      ),
    );
  }
}
