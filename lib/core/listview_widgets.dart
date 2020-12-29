import 'package:flutter/material.dart';
import 'package:flutter_projects/core/list_builder_list.dart';
import 'package:flutter_projects/views/help_home_page.dart';
import 'package:flutter_projects/views/homepage.dart';
import 'package:flutter_projects/views/scan_and_pay_homepage.dart';
import 'package:flutter_projects/views/send_money_home.dart';
import 'package:get/get.dart';

class ListViewClass {
  //payment wallet list view widget======================================
  static Widget PaymentListFun() {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: ListBuilderListClass.paymentList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      ListBuilderListClass.paymentList[index].icon,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Text(
                      ListBuilderListClass.paymentList[index].name,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  //last update home page list view=================
  static Widget updateHomeFun() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: ListBuilderListClass.homeLastUpdateList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            width: 120,
            margin: EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              color: Color(0xffEEF7FB),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: CircleAvatar(
                    child: Image.asset(ListBuilderListClass
                        .homeLastUpdateList[index].assetImgPath),
                    radius: 18,
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 22),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(ListBuilderListClass
                          .homeLastUpdateList[index].iconData),
                      Text(
                        ListBuilderListClass.homeLastUpdateList[index].values,
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

//recent transaction using by listTile===================================
  static Widget RecentTransaction() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: ListBuilderListClass.homeLastUpdateList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Image.asset(ListBuilderListClass
                    .recentTransactionList[index].assetImgPath),
              ),
            ),
            title: Text(
              ListBuilderListClass.recentTransactionList[index].name,
              style: TextStyle(fontSize: 14),
            ),
            subtitle: Text(
              ListBuilderListClass.recentTransactionList[index].details,
              style: TextStyle(fontSize: 13),
            ),
            trailing:
                Text(ListBuilderListClass.recentTransactionList[index].values),
          );
        });
  }

  // page no-9: profile page horizontal card listview
  static Widget CardListFun() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: ListBuilderListClass.profileCardList.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 150,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
              ),
              child: ListTile(
                  title: Column(
                children: [
                  Text(
                    ListBuilderListClass.profileCardList[index].name,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent),
                  ),
                  Text(
                    ListBuilderListClass.profileCardList[index].details,
                    style: TextStyle(fontSize: 12, color: Colors.deepOrange),
                  ),
                ],
              )),
            );
          } else if (index == 1) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 150,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
              ),
              child: ListTile(
                  title: Column(
                children: [
                  Text(
                    ListBuilderListClass.profileCardList[index].name,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  Text(
                    ListBuilderListClass.profileCardList[index].details,
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                ],
              )),
            );
          } else {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 150,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
              ),
              child: ListTile(
                  title: Column(
                children: [
                  Text(
                    ListBuilderListClass.profileCardList[index].name,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  Text(
                    ListBuilderListClass.profileCardList[index].details,
                    style: TextStyle(fontSize: 12, color: Colors.green),
                  ),
                ],
              )),
            );
          }
        });
  }

//profile vertical item listview=======================
  static Widget profileVerticalItemFun() {
    return Container(
      height: 350,
      width: 500,
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
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: ListBuilderListClass.profileItemList.length,
          itemBuilder: (context, index) {
            {
              return ListTile(
                leading: Container(
                  child: Text(
                    ListBuilderListClass.profileItemList[index].name,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                trailing: InkWell(
                    onTap: (){
                      Get.to(HelpPageClass());
                    },
                  child: Container(
                    child: Icon(
                      ListBuilderListClass.profileItemList[index].iconData,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              );
            }
          }),
    );
  }

  //help catagory list item function=====================
  static Widget HelpCatagorylItemFun() {
    return Container(
      height: 350,
      width: 500,
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: ListBuilderListClass.helpCatagoryList.length,
          itemBuilder: (context, index) {
            {
              return InkWell(
                onTap: (){
                  Get.to(HomePage());
                },
                child: ListTile(
                  leading: Container(
                    child: Icon(
                      ListBuilderListClass.helpCatagoryList[index].icon,
                      color: Colors.red,
                    ),
                  ),
                  title: Container(
                    child: Text(
                      ListBuilderListClass.helpCatagoryList[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  trailing: Container(
                    child: Icon(
                      ListBuilderListClass.profileItemList[index].iconData,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              );
            }
          }),
    );
  }





  //page no-12, send money home page horizontal list view================
  static Widget sendMoneyItemFun() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: ListBuilderListClass.sendMoneyList.length,
        itemBuilder: (context, index) {
          {
            if (index==0) {
              return Container(
                margin: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                            radius: 26,
                            child: Icon(Icons.add,size: 30,color: Colors.white,),
                        ),
                    ),

                    Container(child: Text(ListBuilderListClass.sendMoneyList[index].name)),
                  ],
                ),
                // child: ListTile(
                //   title: CircleAvatar(
                //     child: Image.asset(
                //       ListBuilderListClass.sendMoneyItem[index].assetImgPath,
                //     ),
                //   ),
                // ),
              );
            }
            else{
              return Container(
                margin: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Container(
                        child: CircleAvatar(
                            radius: 26,
                            child: Image.asset(ListBuilderListClass.sendMoneyList[index].assetImgPath))),

                    Container(child: Text(ListBuilderListClass.sendMoneyList[index].name)),
                  ],
                ),
                // child: ListTile(
                //   title: CircleAvatar(
                //     child: Image.asset(
                //       ListBuilderListClass.sendMoneyItem[index].assetImgPath,
                //     ),
                //   ),
                // ),
              );
            }


          }
        }
        );
  }







  //page no-13, send money home page horizontal list view================
  static Widget newPaymentProfileItemFun() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: ListBuilderListClass.newPaymentProfileList.length,
        itemBuilder: (context, index) {
          {
              return Container(
                margin: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.to(ScanAndPayClass());
                      },
                      child: Container(
                          child: CircleAvatar(
                              radius: 26,
                              backgroundImage: AssetImage(ListBuilderListClass.newPaymentProfileList[index].assetImgPath))),
                    ),

                    Container(child: Text(ListBuilderListClass.newPaymentProfileList[index].name)),
                  ],
                ),
              );
          }
        }
    );
  }



  //page no-13, name:new payment,details: payment contact vertical list======
  static Widget paymentContactFun() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: ListBuilderListClass.paymentContactList.length,
        itemBuilder: (context, index) {
          {
              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black12),
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(
                      ListBuilderListClass.paymentContactList[index].assetImgPath,
                    ),
                  ),

                  title: Container(
                    child: Text(ListBuilderListClass.paymentContactList[index].title,style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  subtitle: Container(
                    child: Text(ListBuilderListClass.paymentContactList[index].details),
                  ),
                ),
              );



          }
        }
    );
  }





}
