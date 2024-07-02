import 'package:hatssue/main.dart';
import 'package:go_router/go_router.dart';

import 'package:hatssue/sample_view.dart';
import 'package:hatssue/calendar_view.dart';
import 'package:hatssue/calendar_sample_view.dart';
import 'package:hatssue/new_challenge_page.dart';
import 'package:hatssue/new_challenge_notification_page.dart';


class CustomRouter {
  static GoRouter router = GoRouter(
      routes: [
        GoRoute(path: "/", builder: (context, state) => MyHomePage(title: "제목")),
        GoRoute(path: "/sampleView", builder: (context, state) => SampleView()),
        GoRoute(path: "/calendarView", builder: (context, state) => const CalendarView()),
        GoRoute(path: "/calendarSample", builder: (context, state) => CalendarSampleView()),
        GoRoute(path: "/newChallenge", builder: (context, state) => NewChallengePage()),
        GoRoute(path: "/newChallengeNotificationPage", builder: (context, state) => NewChallengeNotificationPage())
    ]
  );
}