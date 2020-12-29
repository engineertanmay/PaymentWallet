import 'package:flutter/material.dart';
import 'package:flutter_projects/core/share/share_const_property.dart';
import 'package:flutter_projects/views/add_bank_account_page.dart';
import 'package:flutter_projects/views/profile_homepage.dart';
import 'package:get/get.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';

class OTPvarification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(
            top: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "50 Seconds",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Container(
                child: Text(
                  "Please enter the OTP send on your mobile number",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              //varification code title and input field=====================
              Container(
                child: Text(
                  "Varification code",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              // todo replace with flutter OTP package
              // pin Code Text Field widget==============
              // InkWell(
              //   onTap: () {
              //     Get.to(addBankAccountPage());
              //   },
              //   child: Container(
              //     margin: EdgeInsets.only(right: 20),
              //     height: 80,
              //     // width: 100,
              //     child: ListView.builder(
              //         scrollDirection: Axis.horizontal,
              //         shrinkWrap: true,
              //         itemCount: 5,
              //         itemBuilder: (context, index) {
              //           return Container(
              //             margin: EdgeInsets.only(right: 10),
              //             height: 60,
              //             width: 60,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(13),
              //               color: Color(0xffeaecef),
              //             ),
              //             child: TextField(
              //               decoration: InputDecoration(
              //                 border: InputBorder.none,
              //               ),
              //             ),
              //           );
              //         }),
              //   ),
              // ),

              SizedBox(
                height: 10,
              ),

              //FINGURE PRINT WIDGET=======
              InkWell(
                onTap: () {
                  Get.to(addBankAccountPage());
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.refresh_outlined,
                          size: 24.0,
                        ),
                        radius: 15.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Send Again"),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              // loader widget==================================
              // todo use button, label "VERIFY"
              // Container(
              //   margin: EdgeInsets.only(right: 20),
              //   color: Colors.lightBlue,
              //   child: Center(
              //     child: Loading(
              //       indicator: BallPulseIndicator(),
              //       size: 100.0,
              //       color: Colors.pink,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
