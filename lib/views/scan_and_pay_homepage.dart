import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'history_homepage.dart';

class ScanAndPayClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(

          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text("Scan & Pay",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 36),
                ),
              ),
              InkWell(
                onTap: (){
                  Get.to(History());
                },
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 150),
                    // height: 200,
                    // width: 200,
                    child: CircleAvatar(
                      radius: 160,
                      backgroundImage:AssetImage("assets/scan.PNG"),
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
