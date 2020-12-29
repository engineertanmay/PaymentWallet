import 'package:flutter/material.dart';
import 'package:flutter_projects/views/report_expenses_page.dart';
import 'package:get/get.dart';
class AddCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Container(
                  child: Text("New Card",style: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.bold,),),
                ),
                Container(
                  child: Image.asset("assets/card.PNG"),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    Get.to(ReportExpensesPage());
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_alt_sharp,color: Colors.indigo,),
                        SizedBox(width: 10,),
                        Text("Scan Card",style: TextStyle(
                            color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 18),),
                      ],
                    )
                    // child:,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                    child: ListTile(
                       title:Container(child: Text("Enter Card Number"),),
                      subtitle: Container(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'XXXX  XXXX  XXXX  XXXX '
                          ),
                        ),
                      ),
                    )
                ),

              SizedBox(height: 40,),
                InkWell(
                  onTap: (){
                    Get.to(ReportExpensesPage());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.symmetric(horizontal: 30),
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff1e32fa),
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: Text("Next",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
