import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hatssue/service/theme/theme_service.dart';
import 'package:table_calendar/table_calendar.dart';

// class 멤버 변수로 선언되면 안됨.. 왜지 ..
final today = DateTime.now();
final _firstDay = DateTime.now();
final _lastDay = DateTime(today.year, today.month + 1, today.day);

class ChallengePeriodView extends ConsumerStatefulWidget {
  const ChallengePeriodView({super.key});

  @override
  ConsumerState<ChallengePeriodView> createState() =>
      _ChallengePeriodViewState();
}

class _ChallengePeriodViewState extends ConsumerState<ChallengePeriodView> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;
  DateTime? _selectedDay;
  DateTime? _rangeStart; // 오늘 부터
  DateTime? _rangeEnd; // 오늘 부터 + 시작 날짜로부터 100일 이내

  void onDaySelected(selectedDay, focusedDay) {
    print('selectedDay : $selectedDay');
    print('focusedDay : $focusedDay');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/');
          },
        ),
      ),
      body: Column(
        children: [
          Text('텍스트 박스 영역', style: ref.typo.headline4),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              // color: ref.color.tertiary,
              child: TableCalendar(
                focusedDay: _focusedDay,

                /// firstDay : first avaliable day  for the calendar

                firstDay: _firstDay,

                /// lastDay : last available day for the calendar
                lastDay: _lastDay,
                rangeStartDay: _rangeStart,
                rangeEndDay: _rangeEnd,
                calendarFormat: _calendarFormat,
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                rangeSelectionMode: _rangeSelectionMode,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay =
                        focusedDay; // update `_focusedDay` here as well
                  });
                },
                onRangeSelected: (start, end, focusedDay) {
                  setState(() {
                    _selectedDay = null;
                    _focusedDay = focusedDay;
                    _rangeStart = start;
                    _rangeEnd = end;
                    _rangeSelectionMode = RangeSelectionMode.toggledOn;
                  });
                },
              ),
            ),
          ),
          // , firstDay: firstDay, lastDay: lastDay)
        ],
      ),
    );
  }
}
