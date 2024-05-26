import 'package:hatssue/challenge.dart';
import 'package:hatssue/main.dart';
import 'package:go_router/go_router.dart';

import 'package:hatssue/sampleView.dart';


class CustomRouter {
  static GoRouter router = GoRouter(
      routes: [
        GoRoute(path: "/", builder: (context, state) => MyHomePage(title: "제목")),
        GoRoute(path: "/sampleView", builder: (context, state) => SampleView()),
        GoRoute(path: "/challenge", builder: (context, state) => Challenge()),
  ]
  );
}