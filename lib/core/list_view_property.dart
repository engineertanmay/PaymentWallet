import 'package:flutter/cupertino.dart';

class PaymentConstClass {
  String name;
  String details;
  String values;
  String title;
  IconData icon;
  String assetImgPath;
  IconData iconData;

  //payment wallets propery constractor========================
  PaymentConstClass({@required this.icon, @required this.name});

  //last update home-- propery constractor==============
  PaymentConstClass.LastUpdateHomeConst({@required this.assetImgPath,
    @required this.iconData,
    @required this.values});

  //recent transaction======================
  PaymentConstClass.RecentTransation({@required this.assetImgPath,
    @required this.name,
    @required this.details,
    @required this.values});

  //bank account listview property==================
  PaymentConstClass.BankAccountProperty({@required this.assetImgPath,
    @required this.name,
    @required this.details,
    @required this.iconData});


  //page no-9 horizontal card listview============

  PaymentConstClass.ProfileCardListProperty({ @required this.name,
    @required this.details});

  //page-9 profile page list view property============================
  PaymentConstClass.ProfileListProperty({ @required this.name,
    @required this.iconData});


  //page no-9, help catagory property obj=================
  PaymentConstClass.HelpCatagoryProperty({ @required this.name,
    @required this.iconData, @required this.icon});


  //send money page no- 12====================
  PaymentConstClass.SendMoneyProperty({ @required this.assetImgPath,
    @required this.name});


  ////page no-13, new payment profile icon and title property obj=================
  PaymentConstClass.NewPaymentProfileProperty(
      {@required this.assetImgPath, @required this.name});


  //new payment contact list=============================

  PaymentConstClass.PaymentContactProperty(
      {@required this.assetImgPath,
        @required this.title,
        @required this.details});
}