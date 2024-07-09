import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:hatssue/splash_screen.view.dart';
import 'package:hatssue/my_home_page_view.dart';
import 'package:hatssue/sample_view.dart';
import 'package:hatssue/calendar_view.dart';
import 'package:hatssue/calendar_sample_view.dart';

class CustomRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => SplashScreen()),
      GoRoute(path: "/myHomePage", builder: (context, state) => MyHomePage(title: "제목")),
      GoRoute(path: "/sampleView", builder: (context, state) => SampleView()),
      GoRoute(path: "/calendarView", builder: (context, state) => CalendarView()),
      GoRoute(path: "/calendarSample", builder: (context, state) => CalendarSampleView())
    ],
  );
}
