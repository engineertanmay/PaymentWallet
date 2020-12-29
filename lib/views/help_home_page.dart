import 'package:flutter/material.dart';
import 'package:flutter_projects/core/listview_widgets.dart';
import 'package:flutter_projects/core/share/share_const_property.dart';
import 'package:flutter_projects/views/homepage.dart';
import 'package:get/get.dart';
class HelpPageClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 30,right: 20),
          child: Column(
            children: [

              //this is appbar widget=====================================
              Container(
                child: ListTile(
                  leading: Container(
                    child: Text("Help",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.bold,),),),
                  trailing: InkWell(
                    onTap: (){
                      Get.to(HomePage());
                    },
                    child: Container(
                      child: Text("Ask Question",style: TextStyle(
                        color: Colors.indigo,fontSize: 17),),
                    ),
                  ),

                ),
              ),
                SizedBox(height: 10,),

              //profile card widget design=============================
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width ,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  children: [
                    Container(
                      child: ListTile(
                        leading:CircleAvatar(
                          child: Image.asset(ConstPropertyClass.assetImagePath),
                        ),
                        trailing: Container(
                          child: Text("Varified",style: TextStyle(color: Colors.white,),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    Container(
                      child: ListTile(
                        title: Container(
                          child: Text("Hallie Goebel",style: TextStyle(
                              fontSize:20,color: Colors.white)),
                        ),
                        subtitle: Container(
                          child: Text(
                            "halliegoebel@gmail.com",
                            style: TextStyle(fontSize:13,color: Colors.white54),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              SizedBox(height: 20,),
              //list heading text widget==============================
              Container(
                alignment: Alignment.topLeft,
                child: Text("How can we help?",style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize:18,color: Colors.black)),
              ),



              //helping catagory list=========================
              Container(
                child: ListViewClass.HelpCatagorylItemFun(),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
