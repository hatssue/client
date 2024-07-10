import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              /// 일단 테마 변경
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
  }
}
