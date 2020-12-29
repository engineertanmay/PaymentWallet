import 'package:flutter/material.dart';
import 'package:flutter_projects/core/listview_widgets.dart';
import 'package:flutter_projects/core/share/share_const_property.dart';
import 'package:flutter_projects/views/help_home_page.dart';
import 'package:flutter_projects/views/new_payment_homepage.dart';
import 'package:get/get.dart';

class ProfileHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1e32fa),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            //appbar profile widget================
            Container(
              child: ListTile(
                leading: Text(
                  "Profile",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
                trailing: InkWell(
                  onTap: (){
                    Get.to(HelpPageClass());
                  },
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),

            //profile image and name==========================
            Container(
              child: ListTile(
                title: CircleAvatar(
                  radius: 26,
                  child: Image.asset(ConstPropertyClass.assetImagePath),
                ),
                subtitle: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "Hallei Goebel ",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "+91901738105874 ",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "halleigoebel@gmail.com",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white54),
                      ),
                    ],
                  ),
                ),
              ),
            ),


          SizedBox(height: 20,),
            //horizontal card list view
            InkWell(
              onTap: (){
                Get.to(HelpPageClass());
              },
              child: Container(
                margin: EdgeInsets.only(right: 20),
                height: 80,
                child: ListViewClass.CardListFun(),
              ),
            ),




            //profile vertical  itemlist ======================
            Expanded(child: ListViewClass.profileVerticalItemFun()),

          ],
        ),
      ),
    );
  }
}
