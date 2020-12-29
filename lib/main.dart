import 'package:flutter/material.dart';
import 'package:flutter_projects/core/line_chart.dart';
import 'package:flutter_projects/views/add_new_card.dart';
import 'package:flutter_projects/views/budget_page.dart';
import 'package:flutter_projects/views/card_page.dart';
import 'package:flutter_projects/views/get_started_signing_page.dart';
import 'package:flutter_projects/views/help_home_page.dart';
import 'package:flutter_projects/views/history_homepage.dart';
import 'package:flutter_projects/views/filter_history_page.dart';
import 'package:flutter_projects/views/homepage.dart';
import 'package:flutter_projects/views/login_with_pin_page.dart';
import 'package:flutter_projects/views/menu_home_page.dart';
import 'package:flutter_projects/views/new_payment_homepage.dart';
import 'package:flutter_projects/views/onboarding_page.dart';
import 'package:flutter_projects/views/otp_varification_page.dart';
import 'package:flutter_projects/views/profile_homepage.dart';
import 'package:flutter_projects/views/report_expenses_page.dart';
import 'package:flutter_projects/views/scan_and_pay_homepage.dart';
import 'package:flutter_projects/views/send_money_home.dart';
import 'package:get/get.dart';

import 'views/add_bank_account_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Payment Wallet',

      //page no-1===============
      home: OnboadingHomeClass(),

      // page no-2=============
      // home: SignUpHomeClass(),

      //page no-3 are same====================
      // home: OTPvarification(),

      //page no-5, page name:add bank account====================
      // home:addBankAccountPage(),


      //page no-6, page name: login to pin
      // home: LoninPageClass(),

      //page no-08 page name :menu=========================
      //  home: MenuHomeClass(),

      //page no-9, page name:profile,=====================
      // home: ProfileHomePageClass(),

      // page no-10; page name: help========================
      // home: HelpPageClass(),

      //page no-11, Page name :last update balanceed page.
      // home: LastUpdateBalancePage(),

      //page no-12,page name:send money, hame Page class===============================
      // home: SentMoneyHomeClass(),

      //page no-13,page name:new payment homepage==============
      // home: NewPaymentHomeClass(),

      //page name: scan and pay, page no-14
      // home: ScanAndPayClass(),

      //page name:History,page no-15
      // home: History(),

      //page name:History,page no-16
      // home: LastHistory(),

      //page name:Card,page no-17
      // home: CardPage(),


        //page name:Card,page no-18
        // home: NewCardPage(),

      //page name:Card,page no-19
      //   home: ReportExpensesPage(),


      //page name:Card,page no-20
      //   home: BudgetPage(),



        // home: LineChartSample2(),




    );
  }
}
