import 'package:flutter/material.dart';
import 'package:flutter_projects/core/share/share_const_property.dart';
import 'package:flutter_projects/views/login_with_fingerprint.dart';
import 'package:flutter_projects/views/profile_homepage.dart';
import 'package:get/get.dart';
class LogInWithPin extends StatelessWidget {
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
            Container(
              height: 500,
              width: 500,
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(top: 20,),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Container(child: Text("Welcome to Back!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),),
                  SizedBox(height: 20,),
                  Container(child: Text("Login with pin",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 13),),),

                  SizedBox(height: 10,),
                  // pin Code Text Field widget==============
                  Container(
                    margin: EdgeInsets.only(right: 20),
                     height: 80,
                    // width: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                        itemBuilder: (context,index){
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Color(0xffeaecef),
                          ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                ),
                              ),
                        );
                        }
                        ),
                  ),

                  SizedBox(height: 20,),
                  //FINGURE PRINT WIDGET=======
                    InkWell(
                    onTap: (){
                      Get.to(LogInWithFingerPrint());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: ListTile(
                        title: SizedBox(width: 100, height: 100,
                            child: Icon(Icons.fingerprint,size: 80,color: Color(0xff1e32fa),)),
                        subtitle: Container(
                          alignment: Alignment.center,
                            child: Text("Login using Fingerprint",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,),)),

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
