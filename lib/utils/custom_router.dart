import 'package:go_router/go_router.dart';
import 'package:hatssue/features/calendar/calendar_view.dart';
import 'package:hatssue/features/challenge/presentaion/screens/challenge_name_view%20copy.dart';
import 'package:hatssue/features/challenge/presentaion/screens/challenge_period_view.dart';
import 'package:hatssue/features/challenge/presentaion/screens/new_challenge_notification_page.dart';
import 'package:hatssue/features/home/home_view.dart';
import 'package:hatssue/features/home/main_view.dart';
import 'package:hatssue/features/samples/calendar_sample_view.dart';
import 'package:hatssue/features/samples/component_sample_view.dart';
import 'package:hatssue/features/splash/splash_screen_view.dart';

class CustomRouter {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashScreenView(),
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
      path: "/newChallengeNotificationPage",
      builder: (context, state) => const NewChallengeNotificationPage(),
    ),
    GoRoute(
      path: "/myHomePage",
      builder: (context, state) => const Home(title: "제목"),
    ),
    GoRoute(
      path: "/challengeView",
      builder: (context, state) => const ChallengeNameView(),
    ),
    GoRoute(
      path: '/challengePeriodView',
      builder: (context, state) => const ChallengePeriodView(),
    ),
    GoRoute(
      path: "/componentSampleView",
      builder: (context, state) => const ComponentSampleView(),
    ),
    GoRoute(
      path: "/mainView",
      builder: (context, state) => const MainView(),
    )
  ]);
}
