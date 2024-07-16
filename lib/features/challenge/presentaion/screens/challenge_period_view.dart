import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hatssue/service/theme/theme_service.dart';
import 'package:hatssue/utils/intl_helper.dart';
import 'package:table_calendar/table_calendar.dart';

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

  final int durationDays = 100;

  late DateTime _firstDay = DateTime.now();
  late DateTime _lastDay = _firstDay.add(
    Duration(days: durationDays),
  );

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
                      if (start != null && end == null) {
                        _firstDay = start;
                        // 시작 날짜만 존재
                        // 시작 날짜에 따라 마지막으로 선택 가능한 날짜 변경하기
                        DateTime newLastDay = start.add(
                          Duration(
                            days: durationDays,
                          ),
                        );
                        _lastDay = newLastDay;
                      }
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
