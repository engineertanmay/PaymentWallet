import 'package:flutter/material.dart';
import 'package:flutter_projects/views/card_page.dart';
import 'package:get/get.dart';

class ModalBottomSheetClass {
  static List<String> dateList = ["1w", "1m", "1m", "1m", "1y"];

  static Widget ModalBottomSheet() {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(26),
            topRight: Radius.circular(26),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                child: Text(
                  "FILTERS",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            //appbar listTile widget========================
            Container(
              child: ListTile(
                leading: Text(
                  "Expense Range",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "\u{20B9}600 - \u{20B9}85,600",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),

            //bar chart widget==========================
            Container(
              child: Image.asset(
                "assets/bar_chart.png",
                height: 120,
              ),
            ),

            //period widget with listview====================================
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Period",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    height: 60,
                    width: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: ModalBottomSheetClass.dateList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              ModalBottomSheetClass.dateList[index],
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),

            //exclude IMI transaction with button==================

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Exclude EMI Transaction",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Get.to(CardPage());
                    },
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      width: 120,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,),
            //cancel and see result button widget===================
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  InkWell(
                    onTap: (){
                      Get.to(CardPage());
                    },
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      alignment: Alignment.center,
                      width: 180,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Text(
                        "Cancel",style:TextStyle(color:Colors.white70,fontWeight: FontWeight.bold,fontSize: 22),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(CardPage());
                    },
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      alignment: Alignment.center,
                      width: 180,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Text(
                        "See Result",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
