import 'package:first_app/pages/BON_tab.dart';
import 'package:first_app/pages/banking_tab.dart';
import 'package:first_app/pages/main_tab.dart';
import 'package:first_app/pages/qr_tab.dart';
import 'package:flutter/material.dart';
import 'package:first_app/helpers/colors.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

   @override
  State<MyHomePage> createState() => _MyHomePageState();
}

  class _MyHomePageState extends State<MyHomePage> {
     int currentTab = 0;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: AppColors.bgColor,
      body: body(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.appOrange,
        unselectedItemColor: Colors.grey,
        elevation: 7,
        onTap: (int index) {
          setState(() {
            currentTab = index;
          });
        },
        currentIndex: currentTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'BON'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'QR code'),
          BottomNavigationBarItem(
              icon: Icon(Icons.museum_sharp), label: 'Banking'),
        ],
      ),
      );
  
  }


  

  Widget body() {
    return getBody();
  }


Widget getBody () {
  switch (currentTab) {
      case 0:
        return const MainTab();
      case 1:
        return const BonTab();
      case 2:
        return const QRCodeTab();
      case 3: 
        return const BankingTab();
      default: 
        return Container();
    }
}

  }