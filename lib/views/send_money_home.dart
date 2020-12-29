import 'package:flutter/material.dart';
import 'package:flutter_projects/core/listview_widgets.dart';
import 'package:flutter_projects/core/share/share_const_property.dart';
import 'package:flutter_projects/views/new_payment_homepage.dart';
import 'package:get/get.dart';

class SendMoneyClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              //send money text widget=================================
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20, right: 5),
                child: Text(
                  "Send Money",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //horizontal profile list===================
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20, right: 5),
                height: 100,
                child: ListViewClass.sendMoneyItemFun(),
              ),
              SizedBox(
                height: 20,
              ),

              //last  profile widget=======================

              Expanded(
                child: InkWell(
                  onTap: (){
                    Get.to(NewPaymentHomeClass());
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffeef7fb),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      ),
                    ),
                    child: Column(
                      children: [



                        //paying cori harvell profile==================
                        ListTile(
                          title: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 100),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  child: Image.asset(
                                      ConstPropertyClass.assetImagePath),
                                ),
                                Text("Paying Cori Harvell"),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "\u{20B9}",
                                        style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "0",
                                        style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black26),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 20),
                        //add message widget===============================
                        Container(
                          child: Text(
                            "+Add message",
                            style: TextStyle(color: Colors.indigo,fontSize: 18),
                          ),
                        ),

                        SizedBox(height: 50,),
                        //swipe to pay button==================
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                            color: Color(0xff2639f9),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "Swipe to Pay",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
