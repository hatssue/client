import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewChallengePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('새로운 챌린지 만들기'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: '챌린지 제목을 입력해주세요',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '많이하는 챌린지를 추천해드려요',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ChallengeButton('🧘 스트레칭 🧘'),
                  ChallengeButton('✏️ 일기쓰기 ✏️'),
                  ChallengeButton('🚶 산책하기 🚶'),
                  ChallengeButton('📘 영어공부 📘'),
                  ChallengeButton('🌸 일찍 일어나기 🌸'),
                  ChallengeButton('🥛 물 마시기 🥛'),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/newChallengeNotificationPage');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              ),
              child: Text('다음', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

class ChallengeButton extends StatelessWidget {
  final String title;

  ChallengeButton(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          // 챌린지 버튼의 동작 추가
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[850],
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}