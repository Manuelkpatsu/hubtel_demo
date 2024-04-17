import 'package:flutter/material.dart';
import 'package:hubtel/theme/custom_color.dart';

import 'home/home_screen.dart';
import 'momo/momo_screen.dart';
import 'schedule/schedule_screen.dart';
import 'transaction/transaction_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentPage = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const MomoScreen(),
    const TransactionScreen(),
    const ScheduleScreen(),
  ];
  final List<BottomNavigationBarItem> _navBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.phone_android_rounded),
      label: 'Send',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.ad_units_outlined),
      label: 'History',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.calendar_month_outlined),
      label: 'Schedule',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentPage,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: CustomColor.unselectedColor,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        items: _navBarItems,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          height: 1.5,
          color: Colors.black,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          height: 1.5,
          color: CustomColor.unselectedColor,
        ),
        selectedFontSize: 10,
        unselectedFontSize: 10,
        elevation: 0.5,
      ),
    );
  }
}
