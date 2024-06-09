import 'package:hatssue/main.dart';
import 'package:go_router/go_router.dart';

import 'package:hatssue/sampleView.dart';
import 'package:hatssue/calendarView.dart';
import 'package:hatssue/calendarSampleView.dart';


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