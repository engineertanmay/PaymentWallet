import 'package:flutter/material.dart';
import 'package:flutter_projects/core/list_view_property.dart';

class ListBuilderListClass {
  //payment wallet listview property===========================
  static PaymentConstClass paymentConstClass1 =
      PaymentConstClass(icon: Icons.add, name: "New Payment");
  static PaymentConstClass paymentConstClass2 = PaymentConstClass(
      icon: Icons.account_balance_wallet, name: "Bank Account");
  static PaymentConstClass paymentConstClass3 =
      PaymentConstClass(icon: Icons.history, name: "All Transactions");
  static PaymentConstClass paymentConstClass4 =
      PaymentConstClass(icon: Icons.follow_the_signs, name: "Rewards & Offers");
  static PaymentConstClass paymentConstClass5 =
      PaymentConstClass(icon: Icons.person, name: "Setting");

  static List<PaymentConstClass> paymentList = [
    paymentConstClass1,
    paymentConstClass2,
    paymentConstClass3,
    paymentConstClass4,
    paymentConstClass5
  ];

  //home page for last update balance==============================
  static PaymentConstClass lastUpdateHomeConst1 =
      PaymentConstClass.LastUpdateHomeConst(
          assetImgPath: "assets/1.png",
          iconData: Icons.attach_money,
          values: "353");

  static PaymentConstClass lastUpdateHomeConst2 =
      PaymentConstClass.LastUpdateHomeConst(
          assetImgPath: "assets/2.png",
          iconData: Icons.attach_money,
          values: "453");
  static PaymentConstClass lastUpdateHomeConst3 =
      PaymentConstClass.LastUpdateHomeConst(
          assetImgPath: "assets/3.png",
          iconData: Icons.attach_money,
          values: "5455");
  static PaymentConstClass lastUpdateHomeConst4 =
      PaymentConstClass.LastUpdateHomeConst(
          assetImgPath: "assets/4.png",
          iconData: Icons.attach_money,
          values: "44545");

  static List<PaymentConstClass> homeLastUpdateList = [
    lastUpdateHomeConst1,
    lastUpdateHomeConst2,
    lastUpdateHomeConst3,
    lastUpdateHomeConst4
  ];

  // this is recent transaction listview===================
  static PaymentConstClass recentTransaction1 =
      PaymentConstClass.RecentTransation(
          assetImgPath: "assets/iconfinder_amazon.png",
          name: "Amazon Pantry",
          details: "Subscription payment",
          values: "-1,200");
  static PaymentConstClass recentTransaction2 =
      PaymentConstClass.RecentTransation(
          assetImgPath: "assets/risha.png",
          name: "Risha Midyett",
          details: "gift for Christmas",
          values: "+6,950");
  static PaymentConstClass recentTransaction3 =
      PaymentConstClass.RecentTransation(
          assetImgPath: "assets/iconfinder_paytm.png",
          name: "PayTM auto pay",
          details: "Weekly transaction through",
          values: "-1200");

  static List<PaymentConstClass> recentTransactionList = [
    recentTransaction1,
    recentTransaction2,
    recentTransaction3,
  ];

  //bank account list property======================
  static PaymentConstClass bankAccountObj1 =
      PaymentConstClass.BankAccountProperty(
          assetImgPath: "assets/1.png",
          name: "HDFC Bank",
          details: "....123",
          iconData: Icons.add);
  static PaymentConstClass bankAccountObj2 =
      PaymentConstClass.BankAccountProperty(
          assetImgPath: "assets/2.png",
          name: "Axis Bank",
          details: "....123",
          iconData: Icons.add);
  static PaymentConstClass bankAccountObj3 =
      PaymentConstClass.BankAccountProperty(
          assetImgPath: "assets/3.png",
          name: "Canara Bank",
          details: "...125",
          iconData: Icons.add);
  static PaymentConstClass bankAccountObj4 =
      PaymentConstClass.BankAccountProperty(
          assetImgPath: "assets/4.png",
          name: "Deutsche Bank",
          details: "...156",
          iconData: Icons.add);

  static List<PaymentConstClass> bankAccounWidgetlist = [
    bankAccountObj1,
    bankAccountObj2,
    bankAccountObj3,
    bankAccountObj4
  ];

  //profile page no-9 horizontal card list view=======
  static PaymentConstClass profileCardListOb1 =
      PaymentConstClass.ProfileCardListProperty(
          name: "3", details: "Bank Account");
  static PaymentConstClass profileCardListOb2 =
      PaymentConstClass.ProfileCardListProperty(name: "9", details: "Card");
  static PaymentConstClass profileCardListOb3 =
      PaymentConstClass.ProfileCardListProperty(name: "9.5", details: "Spend");

  static List<PaymentConstClass> profileCardList = [
    profileCardListOb1,
    profileCardListOb2,
    profileCardListOb3
  ];

  //profile page no-9 list property object=================
  static PaymentConstClass profileItemListObj1 =
      PaymentConstClass.ProfileListProperty(
          name: "Spend Analyzer", iconData: Icons.arrow_forward);
  static PaymentConstClass profileItemListObj2 =
      PaymentConstClass.ProfileListProperty(
          name: "Help & Support", iconData: Icons.arrow_forward);
  static PaymentConstClass profileItemListObj3 =
      PaymentConstClass.ProfileListProperty(
          name: "Payment History", iconData: Icons.arrow_forward);
  static PaymentConstClass profileItemListObj4 =
      PaymentConstClass.ProfileListProperty(
          name: "Payment Settings", iconData: Icons.arrow_forward);
  static PaymentConstClass profileItemListObj5 =
      PaymentConstClass.ProfileListProperty(
          name: "Privacy Settings ", iconData: Icons.arrow_forward);
  static PaymentConstClass profileItemListObj6 =
      PaymentConstClass.ProfileListProperty(
          name: "Notification", iconData: Icons.arrow_forward);


  static List<PaymentConstClass> profileItemList = [
    profileItemListObj1,
    profileItemListObj2,
    profileItemListObj3,
    profileItemListObj4,
    profileItemListObj5,
    profileItemListObj6,
  ];

  //page no-10; page name:help, help catagory list item========
  //profile page no-9 list property object=================
  static PaymentConstClass helpCatagoryObj1 =
      PaymentConstClass.HelpCatagoryProperty(
          name: "Refferal & Bonus",
          iconData: Icons.arrow_forward,
          icon: Icons.add_circle);
  static PaymentConstClass helpCatagoryObj2 =
      PaymentConstClass.HelpCatagoryProperty(
          name: "Payment",
          iconData: Icons.arrow_forward,
          icon: Icons.add_circle);
  static PaymentConstClass helpCatagoryObj3 =
      PaymentConstClass.HelpCatagoryProperty(
          name: "Refund",
          iconData: Icons.arrow_forward,
          icon: Icons.add_circle);
  static PaymentConstClass helpCatagoryObj4 =
      PaymentConstClass.HelpCatagoryProperty(
          name: "Statement & due account",
          iconData: Icons.arrow_forward,
          icon: Icons.add_circle);
  static PaymentConstClass helpCatagoryObj5 =
      PaymentConstClass.HelpCatagoryProperty(
          name: "Rewards",
          iconData: Icons.arrow_forward,
          icon: Icons.add_circle);
  static PaymentConstClass helpCatagoryObj6 =
      PaymentConstClass.HelpCatagoryProperty(
          name: "Card Managememt",
          iconData: Icons.arrow_forward,
          icon: Icons.add_circle);
  static PaymentConstClass helpCatagoryObj7 =
      PaymentConstClass.HelpCatagoryProperty(
          name: "Cashback",
          iconData: Icons.arrow_forward,
          icon: Icons.add_circle);
  static PaymentConstClass helpCatagoryObj8 =
      PaymentConstClass.HelpCatagoryProperty(
          name: "Need more help?",
          iconData: Icons.arrow_forward,
          icon: Icons.add_circle);

  static List<PaymentConstClass> helpCatagoryList = [
    helpCatagoryObj1,
    helpCatagoryObj2,
    helpCatagoryObj3,
    helpCatagoryObj4,
    helpCatagoryObj5,
    helpCatagoryObj6,
    helpCatagoryObj7,
    helpCatagoryObj8
  ];

  //send money property object=====================
  static PaymentConstClass sendMoneyObj1 = PaymentConstClass.SendMoneyProperty(
      assetImgPath: "assets/send_money1.jpg", name: "New");
  static PaymentConstClass sendMoneyObj2 = PaymentConstClass.SendMoneyProperty(
      assetImgPath: "assets/send_money2.jpg", name: "Cori Harve");
  static PaymentConstClass sendMoneyObj3 = PaymentConstClass.SendMoneyProperty(
      assetImgPath: "assets/send_money3.jpg", name: "Milly Oqu");
  static PaymentConstClass sendMoneyObj4 = PaymentConstClass.SendMoneyProperty(
      assetImgPath: "assets/send_money4.jpg", name: "Risha Midy");
  static PaymentConstClass sendMoneyObj5 = PaymentConstClass.SendMoneyProperty(
      assetImgPath: "assets/send_money5.jpg", name: "Miss Schu");

  static List<PaymentConstClass> sendMoneyList = [
    sendMoneyObj1,
    sendMoneyObj2,
    sendMoneyObj3,
    sendMoneyObj4,
    sendMoneyObj5
  ];

  //new payment==================================
//send money property object=====================
  static PaymentConstClass newPaymentProfileObj1 =
      PaymentConstClass.NewPaymentProfileProperty(
          assetImgPath: "assets/payment_img1.PNG", name: "New");
  static PaymentConstClass newPaymentProfileObj2 =
      PaymentConstClass.NewPaymentProfileProperty(
          assetImgPath: "assets/payment_img2.PNG", name: "Cori Harve");
  static PaymentConstClass newPaymentProfileObj3 =
      PaymentConstClass.NewPaymentProfileProperty(
          assetImgPath: "assets/payment_img3.PNG", name: "Milly Oqu");
  static PaymentConstClass newPaymentProfileObj4 =
      PaymentConstClass.NewPaymentProfileProperty(
          assetImgPath: "assets/payment_img4.PNG", name: "Risha Midy");
  static PaymentConstClass newPaymentProfileObj5 =
      PaymentConstClass.NewPaymentProfileProperty(
          assetImgPath: "assets/payment_img5.PNG", name: "Miss Schu");

  static List<PaymentConstClass> newPaymentProfileList = [
    newPaymentProfileObj1,
    newPaymentProfileObj2,
    newPaymentProfileObj3,
    newPaymentProfileObj4,
    newPaymentProfileObj5,
  ];

  // page no-13, page name:new payment,details: payment contact==============

  static PaymentConstClass paymentConstObj1 =
      PaymentConstClass.PaymentContactProperty(
          assetImgPath: "assets/payment_contact1.PNG",
          title: "Shizue Finerty",
          details: "12345678");
  static PaymentConstClass paymentConstObj2 =
      PaymentConstClass.PaymentContactProperty(
          assetImgPath: "assets/payment_contact2.PNG",
          title: "Corrin Benson",
          details: "12345678");
  static PaymentConstClass paymentConstObj3 =
      PaymentConstClass.PaymentContactProperty(
          assetImgPath: "assets/payment_contact3.PNG",
          title: "Lashunda Bolugna",
          details: "12345678");
  static PaymentConstClass paymentConstObj4 =
      PaymentConstClass.PaymentContactProperty(
          assetImgPath: "assets/payment_contact4.PNG",
          title: "Patty Granderson",
          details: "12345678");
  static PaymentConstClass paymentConstObj5 =
      PaymentConstClass.PaymentContactProperty(
          assetImgPath: "assets/payment_contact5.PNG",
          title: "Miss Schulman",
          details: "12345678");
  static PaymentConstClass paymentConstObj6 =
      PaymentConstClass.PaymentContactProperty(
          assetImgPath: "assets/payment_contact6.PNG",
          title: "Latia smallwood",
          details: "12345678");
  static PaymentConstClass paymentConstObj7 =
      PaymentConstClass.PaymentContactProperty(
          assetImgPath: "assets/payment_contact7.PNG",
          title: "Guillarmo Klutts",
          details: "12345678");
  static PaymentConstClass paymentConstObj8 =
      PaymentConstClass.PaymentContactProperty(
          assetImgPath: "assets/payment_contact8.PNG",
          title: "Marquerite Burk",
          details: "12345678");

  static List<PaymentConstClass> paymentContactList = [
    paymentConstObj1,
    paymentConstObj2,
    paymentConstObj3,
    paymentConstObj4,
    paymentConstObj5,
    paymentConstObj6,
    paymentConstObj7,
    paymentConstObj8,
  ];
}
