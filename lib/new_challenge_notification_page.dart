import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'new_challenge_notification_page.dart';

class NewChallengeNotificationPage extends StatelessWidget {
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
        title: Text('챌린지 알림 설정하기'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              '챌린지 성공을 도와줄 알림을 설정해보세요.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ChallengeInfoButton('✏️ 일기쓰기 ✏️'),
            ChallengeInfoButton('오늘부터 Day + 3\n2024.06.24 - 2024.06.27'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 알림 받을 시간 버튼 동작 추가
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[850],
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              ),
              child: Text(
                '알림 받을 시간',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            Text(
              '알림 받을 요일을 선택해주세요',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            DaysOfWeekSelector(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // 이전 버튼 동작 추가
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[850],
                    padding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  ),
                  child: Text(
                    '이전',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // 다음 버튼 동작 추가
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    padding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  ),
                  child: Text(
                    '다음',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChallengeInfoButton extends StatelessWidget {
  final String title;

  ChallengeInfoButton(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          // 챌린지 정보 버튼 동작 추가
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[850],
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class DaysOfWeekSelector extends StatefulWidget {
  @override
  _DaysOfWeekSelectorState createState() => _DaysOfWeekSelectorState();
}

class _DaysOfWeekSelectorState extends State<DaysOfWeekSelector> {
  final List<String> days = ['매일', '월', '화', '수', '목', '금', '토', '일'];
  final Set<String> selectedDays = {};

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      children: days.map((day) {
        final bool isSelected = selectedDays.contains(day);
        return ChoiceChip(
          label: Text(day),
          selected: isSelected,
          onSelected: (bool selected) {
            setState(() {
              if (selected) {
                selectedDays.add(day);
              } else {
                selectedDays.remove(day);
              }
            });
          },
          selectedColor: Colors.amber,
        );
      }).toList(),
    );
  }
}