import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hatssue/service/theme/theme_service.dart';

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
        // final AppTheme theme = ref.watch(themeProvider);

        return Scaffold(
          appBar: AppBar(
            // backgroundColor: theme.color.surface,
            title: Text(
              title,
            ),
            actions: [
              IconButton(
                onPressed: ref.read(themeServiceProvider.notifier).toggleTheme,
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
                child: const Text("캘린더 샘플"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.go('/challengePeriodView');
                },
                child: const Text("챌린지 기간"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.go('/challengeView');
                },
                child: const Text("챌린지 생성"),
              ),
            ],
          )),
        );
      },
    );
  }
}
