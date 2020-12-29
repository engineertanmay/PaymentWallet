import 'package:flutter/material.dart';
import 'package:flutter_projects/core/card_widget.dart';
import 'package:flutter_projects/core/share/share_widget.dart';
import 'package:flutter_projects/views/add_new_card.dart';
import 'package:get/get.dart';
class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Get.to(AddCardPage());
                  },
                  child: Container(
                    child: ShareWidgetClass.CardListTile("Cards", "+add New"),
                  ),
                ),
                SizedBox(height: 10,),


                //horizontal card design==========================
                InkWell(
                  onTap: (){
                    Get.to(AddCardPage());
                  },
                  child: Container(
                    height: 200,
                    child: CardWidgetClass.CardWidget(),
                    // child:,
                  ),
                ),
                SizedBox(height: 20,),
          Container(
            child: Text("Last Statement Outstanding",style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black),),
          ),

                SizedBox(height: 10,),
                Container(
                  child: Text("\u{20B9}854665",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,),),
                ),

                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.only(bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Colors.grey),
                    ),
                  ),
                  child: Text("Due date: 30 November",style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                ),

                SizedBox(height: 10,),
                //spend analyzer===================================
                Container(
                  child: Text("SPEND ANALYZER",style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,),),
                ),

                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    Get.to(AddCardPage());
                  },
                  child: Container(
                    height: 500,
                    child: CardWidgetClass.CardGridListWidget(),
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
