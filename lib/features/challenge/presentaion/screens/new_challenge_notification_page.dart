import 'package:flutter/material.dart';

class NewChallengeNotificationPage extends StatelessWidget {
  const NewChallengeNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('챌린지 알림 설정하기'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              '챌린지 성공을 도와줄 알림을 설정해보세요.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const ChallengeInfoButton('✏️ 일기쓰기 ✏️'),
            const ChallengeInfoButton('오늘부터 Day + 3\n2024.06.24 - 2024.06.27'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 알림 받을 시간 버튼 동작 추가
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[850],
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              ),
              child: const Text(
                '알림 받을 시간',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '알림 받을 요일을 선택해주세요',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const DaysOfWeekSelector(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // 이전 버튼 동작 추가
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[850],
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 50),
                  ),
                  child: const Text(
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 50),
                  ),
                  child: const Text(
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

  const ChallengeInfoButton(this.title, {super.key});

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
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class DaysOfWeekSelector extends StatefulWidget {
  const DaysOfWeekSelector({super.key});

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
