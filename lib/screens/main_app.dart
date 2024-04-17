import 'package:flutter/material.dart';
import 'package:hubtel/theme/custom_color.dart';

import 'history/history_screen.dart';
import 'home/home_screen.dart';
import 'momo/momo_screen.dart';
import 'schedule/schedule_screen.dart';

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
    const HistoryScreen(),
    const ScheduleScreen(),
  ];
  final List<BottomNavigationBarItem> _navBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.list_alt_outlined),
      label: 'Momo',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.history),
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
        showSelectedLabels: false,
        showUnselectedLabels: false,
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
