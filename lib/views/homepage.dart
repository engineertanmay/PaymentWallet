import 'package:flutter/material.dart';
import 'package:flutter_projects/core/listview_widgets.dart';
import 'package:flutter_projects/views/add_bank_account_page.dart';
import 'package:flutter_projects/views/send_money_home.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                //hsbc logo widget with text widget===============
                Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset("assets/HSBC_logo.png",height: 35,width: 74,)),
                SizedBox(height: 10,),
                Container(
                  child: ListTile(
                    title:Text("Last Update balance",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    subtitle: Text("\u{20B9} 85,625",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
                    trailing: InkWell(
                        onTap: (){
                          Get.to(SendMoneyClass());
                        },
                        child: CircleAvatar(child: Image.asset("assets/refresh.png"))),
                  ),
                ),


                //horizontal primary text and checkbox icon===============
                Container(
                  child: Row(
                    children: [
                      Container(
                          decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                            color: Color(0xff17C261),
                  ),
                          child: Icon(Icons.check,color: Colors.white,),),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text("primary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                      ),
                    ],
                  ),
                ),


                //start horizontal List
                InkWell(
                  onTap: (){
                    Get.to(SendMoneyClass());
                  },
                  child: Container(
                    height: 100,
                    child: ListViewClass.updateHomeFun(),
                  ),
                ),

              SizedBox(height: 20,),
                //horizontal sent and receiver button =========================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  InkWell(
                    onTap: (){
                      Get.to(SendMoneyClass());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 80,
                      width: 153,
                      decoration: BoxDecoration(
                        color: Color(0xff1E32FA),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text("Send",style: TextStyle(color:Colors.white, fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      Get.to(SendMoneyClass());
                    },
                    child: Container(
                      height: 80,
                      width: 153,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xff17C261),
                        borderRadius: BorderRadius.circular(12),
                      ),
                        child: Text("Receiver",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  ],
                ),



                SizedBox(height: 20,),

                //recent transaction text widget==============

                // recent transaction list view widget=====================
                Container(
                  alignment: Alignment.topLeft,
                  child: Text("RECENT TRANSACTION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                ),
                SizedBox(height: 10,),





                //Recent Transaction listview=====================
                InkWell(
                  onTap: (){
                    Get.to(SendMoneyClass());
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xffEEF7FB),
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(12),
                        topRight: Radius.circular(12),),
                    ),
                    child: ListViewClass.RecentTransaction(),
                  ),
                ),



                //scanner QR code widget====================
                InkWell(
                  onTap: (){
                    Get.to(SendMoneyClass());
                  },
                  child: Container(
                    child: ListTile(
                      title: CircleAvatar(
                        radius: 36,
                          child: Icon(Icons.qr_code_scanner_outlined,size: 35,),
                      ),
                      subtitle: Container(
                          alignment: Alignment.center,
                          child: Text("Scanner",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                    ),
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

