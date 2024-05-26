import 'package:flutter/material.dart';

class Challenge extends StatefulWidget {
  const Challenge({super.key});

  @override
  State<Challenge> createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {

  String challenge = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("새로운 챌린지 만들기"),
              Text("챌린지명"),
              TextField()
            ],
          ),
        ),
    );
  }
}
