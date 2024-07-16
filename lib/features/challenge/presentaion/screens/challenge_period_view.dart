import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hatssue/service/theme/theme_service.dart';
import 'package:hatssue/utils/intl_helper.dart';
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
  DateTime _focusedDay = DateTime.now();
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;
  DateTime? _selectedDay;
  DateTime? _rangeStart; // 오늘 부터
  DateTime? _rangeEnd; // 오늘 부터 + 시작 날짜로부터 100일 이내

  String? rangeDiff = '';

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('텍스트 박스 영역', style: ref.typo.headline4),
            const SizedBox(height: 20),
            Text('Day + $rangeDiff', style: ref.typo.headline2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TableCalendar(
                  locale: LangType.ko.lang,
                  focusedDay: _focusedDay,

                  /// firstDay : first avaliable day  for the calendar

                  firstDay: _firstDay,

                  /// lastDay : last available day for the calendar
                  lastDay: _lastDay,
                  rangeStartDay: _rangeStart,
                  rangeEndDay: _rangeEnd,
                  rangeSelectionMode: _rangeSelectionMode,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    // DateTime newLastDay =
                    //     selectedDay.add(const Duration(days: 7));
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay =
                          focusedDay; // update `_focusedDay` here as well
                    });
                  },
                  onRangeSelected: (start, end, focusedDay) {
                    // 차이 구하기
                    // if (end != null && start != null) {
                    //   int dayDiff = end.difference(start).inDays;
                    //   print('dayDiff : $dayDiff');
                    // }
                    // 현재 선택한 날짜에 따라 마지막으로 선택 가능한 날짜 변경하기

                    setState(() {
                      _selectedDay = null;
                      _focusedDay = focusedDay;
                      _rangeStart = start;
                      _rangeEnd = end;
                      _rangeSelectionMode = RangeSelectionMode.toggledOn;
                    });
                  },

                  headerStyle: const HeaderStyle(
                    // 날짜 format 바꾸는 버튼 표출 여부
                    formatButtonVisible: false,
                  ),
                ),
              ),
            ),
            // ),
          ],
        ),
      ),
    );
  }
}
