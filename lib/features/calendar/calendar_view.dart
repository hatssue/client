import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:table_calendar/table_calendar.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  // final DateTime _focusedDay = DateTime.now();
  // final DateTime today = DateTime.now();
  // final DateTime _firstDay = DateTime(today.year, today.month - 3, today.day);
  // final DateTime _lastDay = DateTime(today.year, today.month + 3, today.day);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            return context.go('/');
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      // bottomNavigationBar: NavigationBar(
      //   onDestinationSelected: (int index) {
      //     if (index == 0) {
      //       return context.go('/');
      //     }
      //     if (index == 1) {
      //       return context.go('/calendarSample');
      //     }
      //   },
      //   indicatorColor: Colors.amber,
      //   selectedIndex: 0,
      //   destinations: const <Widget>[
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.home),
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.calendar_month),
      //       icon: Icon(Icons.calendar_month_outlined),
      //       label: 'Calendar Sample',
      //     ),
      //   ],
      // ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              '일기쓰기',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Text(
              '몇일 동안 진행하실 예정인가요?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
            child: Text(
              '최대 100일까지 설정할 수 있어요!',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 30.0),
          // TableCalendar(focusedDay: _focusedDay, firstDay: _firstDay,
          //
          //     lastDay: _lastDay)
        ],
      ),
    );
  }
}
