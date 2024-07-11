import 'package:go_router/go_router.dart';

import 'package:hatssue/src/home/home_view.dart';
import 'package:hatssue/src/calendar/calendar_view.dart';
import 'package:hatssue/src/samples/calendar_sample_view.dart';
import 'package:hatssue/src/challenge/new_challenge_page.dart';
import 'package:hatssue/src/challenge/new_challenge_notification_page.dart';

class CustomRouter {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Home(title: "home"),
    ),
    GoRoute(
      path: "/calendarView",
      builder: (context, state) => const CalendarView(),
    ),
    GoRoute(
      path: "/calendarSample",
      builder: (context, state) => const CalendarSampleView(),
    ),
    GoRoute(
      path: "/newChallenge",
      builder: (context, state) => const NewChallengePage(),
    ),
    GoRoute(
      path: "/newChallengeNotificationPage",
      builder: (context, state) => const NewChallengeNotificationPage(),
    ),
    GoRoute(
      path: "/myHomePage",
      builder: (context, state) => const Home(title: "제목"),
    ),
  ]);
}
