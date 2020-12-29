import 'package:flutter/material.dart';
import 'package:flutter_projects/views/get_started_signing_page.dart';
import 'package:get/get.dart';

class OnboadingHomeClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E32FA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 22),
                    child: Image.asset(
                      "assets/onbording.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 350,
                      ),

                      //Title widget=================================
                      InkWell(
                        onTap: (){
                          Get.to(GetStartAndSignUp());
                        },
                        child: Container(
                          height: 200,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 24),
                          child: ListTile(
                            title: Container(
                              width: 50,
                              child: Text(
                                "Pay\nManage\nGrow...",
                                style: TextStyle(
                                  fontSize: 50,
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            subtitle: InkWell(
                              onTap: (){
                                Get.to(GetStartAndSignUp());
                              },
                              child: Container(
                                child: Column(
                                  children: [

                                    Text(
                                      "An easy app to manage your all payment and finance related needs",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ),

                                    SizedBox(height: 20,),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),



                      //GET STARTED BUTTON FOR NEXT PAGE==============
                      InkWell(
                        onTap: (){
                          Get.to(GetStartAndSignUp());
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 100),
                          height: 50,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(26),
                          ),
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.black),
                          ),
                        ),
                      ),

                    ],
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
