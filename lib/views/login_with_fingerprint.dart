import 'package:flutter/material.dart';
import 'package:flutter_projects/core/share/share_const_property.dart';
import 'package:flutter_projects/views/menu_home_page.dart';
import 'package:flutter_projects/views/profile_homepage.dart';
import 'package:get/get.dart';
class LogInWithFingerPrint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1e32fa),
      body:Container(
        child: Column(
          children: [
            SizedBox(height: 50,),

            //profile image and name==========================
            Container(
              child: ListTile(
                title: CircleAvatar(
                  radius: 26,
                  child:Image.asset(ConstPropertyClass.assetImagePath),),
                subtitle:Container(
                  alignment: Alignment.center,
                  child: Text("Hallei Goebel ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
            ),



            //login Container start=============================
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: 500,
                padding: EdgeInsets.only(left: 20),
                margin: EdgeInsets.only(top: 20,),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),),
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      //FINGURE PRINT WIDGET=======
                      InkWell(
                    onTap: (){
                  Get.to(MenuHomeClass());
                             },
                        child: Container(
                          alignment: Alignment.center,
                          child: ListTile(
                            title: SizedBox(width: 130, height: 130,
                                child: Icon(Icons.fingerprint,size: 120,color: Color(0xff1e32fa),)),
                            subtitle: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Please touch the fingerprint sensor to login",
                                  style: TextStyle(
                                    fontSize: 17,fontWeight: FontWeight.bold,),)),

                          ),
                        ),
                      ),
                    ],
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
