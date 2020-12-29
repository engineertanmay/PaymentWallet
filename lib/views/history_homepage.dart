import 'package:flutter/material.dart';
import 'package:flutter_projects/core/listview_widgets.dart';
import 'package:flutter_projects/core/share/share_widget.dart';
import 'package:flutter_projects/views/filter_history_page.dart';
import 'package:get/get.dart';
class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              SizedBox(height: 20,),

              
              //appbar listTile widget===============================
              InkWell(
               onTap: (){
                 Get.to(FilterHistoryClass());
               },
                child: Container(
                  alignment: Alignment.topLeft,
                  child: ListTile(
                    leading: Container(
                      child: Text("History",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                    ),
                    trailing: Container(
                      child: Icon(Icons.waves,color: Colors.blue,),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),


            //start history title and listview=============
              Expanded(
                  child:InkWell(
                    onTap: (){
                      Get.to(FilterHistoryClass());
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: MediaQuery.of(context).size.height,
                      child: Column(

                        children: [
                          //listTile heading widget=======================
                          ShareWidgetClass.HistoryHeadingFun("November 12, Tuesday"),
                          //First listview widget=================================
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffeef7fb),
                              borderRadius: BorderRadius.circular(26),
                            ),
                            height: 160,
                            child: ShareWidgetClass.HistoryFirstListFun(),
                          ),



                          
                          
                          
                          //second list view heading====================
                          ShareWidgetClass.HistoryHeadingFun("November 15, Monday"),
                          //second listview widget=================================
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffeef7fb),
                              borderRadius: BorderRadius.circular(26),
                            ),
                            height: 150,
                            child: ShareWidgetClass.HistorySecondListFun(),
                          ),



                          
                          
                          
                          //third list view heading====================
                          ShareWidgetClass.HistoryHeadingFun("November 20, Wednesday"),
                          //First listview widget=================================
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffeef7fb),
                                borderRadius: BorderRadius.circular(26),
                              ),
                              height:MediaQuery.of(context).size.height,
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
