import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hatssue/service/theme/theme_service.dart';
import 'package:hatssue/utils/intl_helper.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class ChallengePeriodView extends ConsumerStatefulWidget {
  const ChallengePeriodView({super.key});

  @override
  ConsumerState<ChallengePeriodView> createState() =>
      _ChallengePeriodViewState();
}

class _ChallengePeriodViewState extends ConsumerState<ChallengePeriodView> {
  final int durationDays = 100;
  final String defaultDtFormat = 'yyyy.MM.dd';

  DateTime _focusedDay = DateTime.now();
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  String? rangeDiff = '';

  String formattedStartDt = '';
  String formattedEndDt = '';

  late DateTime _firstDay = DateTime.now();
  late DateTime _lastDay = _firstDay.add(
    Duration(days: durationDays),
  );

  bool isDateSelected = false;

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
            if (rangeDiff != '')
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ref.color.tertiary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '오늘부터 Day',
                            style: ref.typo.body1.copyWith(
                              color: Colors.white,
                              fontWeight: ref.typo.medium,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '+',
                            style: ref.typo.body1.copyWith(
                              color: Colors.white,
                              fontWeight: ref.typo.medium,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '$rangeDiff',
                            style: ref.typo.body1.copyWith(
                              color: ref.color.onTertiary,
                              fontWeight: ref.typo.medium,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        ' $formattedStartDt ~ $formattedEndDt',
                        style: ref.typo.body2.copyWith(
                          fontSize: 11,
                          fontWeight: ref.typo.regular,
                          color: const Color(0xFF929292),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(height: 20),
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
                      if (start != null && end != null) {
                        int diff = end.difference(start).inDays;
                        rangeDiff = diff.toString();
                        formattedStartDt =
                            DateFormat(defaultDtFormat).format(start);
                        formattedEndDt =
                            DateFormat(defaultDtFormat).format(end);
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
