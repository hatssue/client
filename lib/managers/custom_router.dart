import 'package:hatssue/main.dart';
import 'package:go_router/go_router.dart';

import 'package:hatssue/sample_view.dart';
import 'package:hatssue/calendar_view.dart';
import 'package:hatssue/calendar_sample_view.dart';


class CustomRouter {
  static GoRouter router = GoRouter(
      routes: [
        GoRoute(path: "/", builder: (context, state) => MyHomePage(title: "제목")),
        GoRoute(path: "/sampleView", builder: (context, state) => SampleView()),
        GoRoute(path: "/calendarView", builder: (context, state) => const CalendarView()),
        GoRoute(path: "/calendarSample", builder: (context, state) => CalendarSampleView())
    ]
  );
}