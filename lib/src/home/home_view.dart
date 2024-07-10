import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hatssue/service/theme_service.dart';
import 'package:hatssue/theme/foundation/app_theme.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final AppTheme theme = ref.watch(themeProvider);

        return Scaffold(
          appBar: AppBar(
            backgroundColor: theme.color.surface,
            title: Text(
              title,
            ),
            actions: [
              IconButton(
                onPressed: () {
                  /// 테마 변경
                  ref.read(themeProvider.notifier).toggleTheme();
                },
                icon: const Icon(
                  Icons.settings,
                  size: 20,
                ),
              )
              // Button
            ],
          ),
          body: Center(
              child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.go('/calendarSample');
                },
                child: const Text("캘린더 샘플 화면으로 이동"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.go('/calendarView');
                },
                child: const Text("날짜 선택 화면으로 이동"),
              ),
            ],
          )),
        );
      },
    );
  }
}
