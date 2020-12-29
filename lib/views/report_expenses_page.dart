import 'package:flutter/material.dart';
import 'package:flutter_projects/core/card_widget.dart';
import 'package:flutter_projects/views/budget_page.dart';
import 'package:get/get.dart';
class ReportExpensesPage extends StatelessWidget {
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
                SizedBox(height: 50,),
                Container(
                  child: Text("January",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 10,),

                //horizontal card design==========================

                  InkWell(
                    onTap: (){
                      Get.to(BudgetPage());
                    },
                  child: Container(
                    height: 40,
                    child: CardWidgetClass.ReportExpensesFun(),
                    // child:,
                  ),
                ),
                SizedBox(height: 100,),
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
                    Get.to(BudgetPage());
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
