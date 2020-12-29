import 'package:flutter/material.dart';
import 'package:flutter_projects/core/share/share_widget.dart';
import 'package:flutter_projects/views/report_expenses_page.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CardWidgetClass{
  static List<String> reportHeaderList = ["Day","Week","Month","3 Months"];
  //horizontal card listview====================================
  static Widget CardWidget(){
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context,index){
          if (index==0) {
            return Container(
              margin: EdgeInsets.only(right: 20),
              height: 200,
              width: 300,
              // width: MediaQuery.of(context).size.width,
              decoration:BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(26),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  ListTile(
                    leading: Image.asset("assets/visa_card_chip.PNG",height: 25,width:30,),
                    trailing: Image.asset("assets/visa_logo.PNG",height: 25,width:30),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height:30,
                    child: ShareWidgetClass.CardPinListView(),
                  ),

                  Container(
                    child: ListTile(
                      title:Text("Albert Roberto",style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
                      trailing:Text("05/08",style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
                    ),
                  ),
                ],
              ),
            );
          }

          else{
            return Container(
              margin: EdgeInsets.only(right: 20),
              height: 200,
              width: 300,
              // width: MediaQuery.of(context).size.width,
              decoration:BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(26),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  ListTile(
                    leading: Image.asset("assets/visa_card_chip.PNG",height: 25,width:30,),
                    trailing: Image.asset("assets/visa_logo.PNG",height: 25,width:30),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height:30,
                    child: ShareWidgetClass.CardPinListView(),
                  ),

                  Container(
                    child: ListTile(
                      title:Text("Albert Roberto",style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
                      trailing:Text("05/08",style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
                    ),
                  ),
                ],
              ),
            );
          }
        }
    );
  }




  //card grid list view=========================
static Widget CardGridListWidget(){
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context,index){
          return Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffeef7fb),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width:100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Icon(Icons.shopping_bag,color: Colors.red,),
                      Text("Shopping"),
                      Text("\u{20B9}1254"),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: LinearPercentIndicator(
                          center: Text("70%"),
                          width: 80.0,
                          lineHeight: 10.0,
                          percent: 0.5,
                          backgroundColor: Colors.grey,
                          progressColor: Colors.blue,
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width:100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Icon(Icons.food_bank,color: Colors.red,),
                      Text("Shopping"),
                      Text("\u{20B9}1254"),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: LinearPercentIndicator(
                          center: Text("70%"),
                          width: 80.0,
                          lineHeight: 10.0,
                          percent: 0.5,
                          backgroundColor: Colors.grey,
                          progressColor: Colors.green,
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width:100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Icon(Icons.airplanemode_active,color: Colors.red,),
                      Text("Shopping"),
                      Text("\u{20B9}1254"),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: LinearPercentIndicator(
                          center: Text("70%"),
                          width: 80.0,
                          lineHeight: 10.0,
                          percent: 0.5,
                          backgroundColor: Colors.grey,
                          progressColor: Colors.deepPurple,
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          );
        }
    );
}





//report expenses header menu list==========================================
  static Widget ReportExpensesFun(){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: CardWidgetClass.reportHeaderList.length,
        itemBuilder: (context,index){
        if (index==2) {
          return Container(
            alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffeef7fb),
                borderRadius: BorderRadius.circular(26),
              ),
              child: Text(CardWidgetClass.reportHeaderList[index],style: TextStyle(fontWeight: FontWeight.bold),));
        }
          else{
          return Container(
            padding: EdgeInsets.all(10),
            child: Text(CardWidgetClass.reportHeaderList[index]),
            width: 80.0,
          );
        }
        }
    );
  }





}