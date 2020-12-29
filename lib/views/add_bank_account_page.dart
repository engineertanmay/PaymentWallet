import 'package:flutter/material.dart';
import 'package:flutter_projects/core/bank_account_widget/bank_account_list_widget.dart';
import 'package:flutter_projects/views/login_with_pin_page.dart';
import 'package:get/get.dart';
class addBankAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(child: Text("bank account",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),),
            SizedBox(height: 10,),
            Container(child: Text("We have find 4 bank accounts belongs to you",style: TextStyle(fontSize: 13),),),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Get.to(LogInWithPin());
              },
              child: Container(
                child: BankAccountWidgetClass.bankAccountWidget(),
              ),
            ),


            //ADD NEW WIDGET==========================
              SizedBox(height: 20,),
             InkWell(
               onTap: (){
                 Get.to(LogInWithPin());
               },
               child: Container(
                 alignment: Alignment.center,
                 child: Text("+ Add New",style: TextStyle(fontSize: 17,color: Color(0xff1e32fa),
                 ),
                 ),
               ),
             ),

          ],
        ),
      ),
    );
  }
}
