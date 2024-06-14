import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SampleView extends StatelessWidget {
  const SampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.go('/');
            },
            child: Text("홈 화면으로 이동")
        ),
      )
    );
  }
}
