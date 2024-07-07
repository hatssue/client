

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.go('/sampleView');
                  },
                  child: Text("샘플 화면으로 이동")
              ),
              ElevatedButton(
                  onPressed: () {
                    context.go('/calendarSample');
                  },
                  child: Text("캘린더 샘플 화면으로 이동")
              ),
              ElevatedButton(
                  onPressed: () {
                    context.go('/calendarView');
                  },
                  child: Text("날짜 선택 화면으로 이동")
              ),
            ],
          )
      ),
    );
  }
}
