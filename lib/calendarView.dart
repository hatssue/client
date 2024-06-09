import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'calendarSampleView.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('챌린지 날짜 선택'),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          if(index == 0) {
            return context.go('/');
          }
          if(index == 1) {
            return context.go('/calendarSample');
          }
        },
        indicatorColor: Colors.amber,
        selectedIndex: 0,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_month),
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Calendar Sample',
          ),
        ],
      ),
      body: Text('날짜 선택 화면'),
    );
  }
}


