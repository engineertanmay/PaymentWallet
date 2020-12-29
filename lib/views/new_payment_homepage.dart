
import 'package:flutter/material.dart';
import 'package:flutter_projects/core/listview_widgets.dart';
import 'package:flutter_projects/views/scan_and_pay_homepage.dart';
import 'package:get/get.dart';

class NewPaymentHomeClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              //new Payment text widget=================================
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20, right: 5),
                child: Text(
                  "New Payment",
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
                child: ListViewClass.newPaymentProfileItemFun(),
              ),
              SizedBox(
                height: 10,
              ),

              //Payment contact headline widget=====================
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20, right: 5),
                child: Text(
                  "MY CONTACTS",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              //new payment contact list widget=======================

              Expanded(
                child: InkWell(
                  onTap: (){
                    Get.to(ScanAndPayClass());
                  },
                  child: Container(
                    height: 1000,
                    width: MediaQuery.of(context).size.width,
                    child: ListViewClass.paymentContactFun(),
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

