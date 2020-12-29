import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/core/bottomsheet_modal_widget.dart';
import 'package:flutter_projects/core/listview_widgets.dart';
import 'package:flutter_projects/views/homepage.dart';
import 'package:flutter_projects/views/profile_homepage.dart';
import 'package:get/get.dart';
class MenuHomeClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E32FA),

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //profile circle avatar image=======================
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
              child: Image.asset("assets/appbar_leading.png"),
              ),

              // profile title text widget===============
              Container(
                child: Text(
                  "Halei  Goebel",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),

              //gmail address text widget=============
              Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("halei.goebel@gmail.com",
                    style: TextStyle(color: Colors.white54),
                  ),
              ),

          SizedBox(height: 30.0),
              // payment wallet listView==========================
              Container(
                // MediaQuery.of(context).size.height,
                child: ListViewClass.PaymentListFun(),
              ),


              // logout widget====================
              InkWell(
                onTap: (){
                  Get.to(ProfileHomePage());
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text("LogOut",
                    style: TextStyle(color: Colors.white,fontSize: 17),),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
