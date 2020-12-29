import 'package:flutter/material.dart';
import 'package:flutter_projects/views/menu_home_page.dart';
import 'package:flutter_projects/views/otp_varification_page.dart';
import 'package:get/get.dart';

class GetStartAndSignUp extends StatelessWidget {
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


                  // start all text widget===============
                  Column(
                    children: [
                      SizedBox(
                        height: 350,
                      ),

                      //Title widget=================================
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 24,bottom: 20),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 56,
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      //Get started button widget=============
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "Please enter the mobile phone number",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),



                            //input field widget=============================
                            Container(
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixText: "+91",prefixStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                                  suffixStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                                  labelText: "Phone Number",
                                  labelStyle: TextStyle(
                                      fontSize: 25,fontWeight: FontWeight.bold, color: Colors.black),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),



                            //===========get started button tap to next page=====
                            InkWell(
                                onTap:(){
                                  Get.to(OTPvarification());
                                },
                              child: Container(
                                margin: EdgeInsets.only(top: 20,bottom: 20),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 100),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  color: Color(0xff1E32FA),
                                ),
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white),
                                ),
                              ),
                            ),

                            //All ready have account widget============
                            Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    "Allready have account?",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    "SignIn",
                                    style: TextStyle(
                                        fontSize: 20,fontWeight: FontWeight.bold, color: Color(0xff1E32FA)),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
