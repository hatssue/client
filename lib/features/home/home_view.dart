import 'package:flutter/material.dart';
import 'package:hatssue/shared/button/button.dart';
import 'package:intl/intl.dart';

class Challenge {
  final String title;
  final IconData icon;
  final DateTime startDate;
  final DateTime endDate;
  final bool isCompleted;

  Challenge({
    required this.title,
    required this.icon,
    required this.startDate,
    required this.endDate,
    required this.isCompleted,
  });
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    int dDay = 1;

    List<Challenge> challenges = [
      Challenge(
        title: "일 하기",
        icon: Icons.work,
        startDate: DateTime(2024, 07, 01),
        endDate: DateTime(2024, 07, 31),
        isCompleted: false,
      ),
      Challenge(
        title: "밥 먹기",
        icon: Icons.work,
        startDate: DateTime(2024, 07, 01),
        endDate: DateTime(2024, 07, 05),
        isCompleted: false,
      ),
      Challenge(
        title: "독서 하기",
        icon: Icons.work,
        startDate: DateTime(2024, 07, 01),
        endDate: DateTime(2024, 08, 24),
        isCompleted: false,
      ),
      Challenge(
        title: "숨쉬기",
        icon: Icons.work,
        startDate: DateTime(2024, 07, 01),
        endDate: DateTime(2024, 08, 24),
        isCompleted: false,
      ),
      Challenge(
        title: "영화 보기",
        icon: Icons.work,
        startDate: DateTime(2024, 07, 01),
        endDate: DateTime(2024, 08, 24),
        isCompleted: false,
      )
    ];

    return Scaffold(
      floatingActionButton: AppendChallengeButton(),
      body: Column(
        children: [
          // 햇슈 시작한지 ~ 일 째
          Row(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/speechBubble.png',
                      width: 119,
                      height: 39.48,
                    ),
                    Text(
                      "햇슈 시작한지 $dDay일 째",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          // 해 모양 이미지
          Image.asset('assets/images/hattue/hattue.png'),

          // 진행 중인 챌린지 글자와 수정 버튼
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "진행중인 챌린지",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                ElevatedButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    child: Image.asset(
                      'assets/images/icons/home.png',
                      width: 24,
                      height: 24,
                    )),
              ],
            ),
          ),

          // 리스트
          ChallengeList(challenges: challenges),
        ],
      ),
    );
  }
}

class ChallengeList extends StatelessWidget {
  const ChallengeList({
    super.key,
    required this.challenges,
  });

  final List<Challenge> challenges;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: challenges.length,
        itemBuilder: (context, index) {
          Challenge challenge = challenges[index];
          return ChallengeListRow(challenge: challenge);
        },
      ),
    );
  }
}

class ChallengeListRow extends StatelessWidget {
  const ChallengeListRow({
    super.key,
    required this.challenge,
  });

  final Challenge challenge;

  @override
  Widget build(BuildContext context) {
    String startDate = DateFormat('yyyy-MM-dd').format(challenge.startDate);
    String endDate = DateFormat('yyyy-MM-dd').format(challenge.endDate);

// 종료 예정 날짜까지와의 남은 날짜 계산
    DateTime now = DateTime.now();
    Duration difference = challenge.endDate.difference(now);
    int daysLeft = difference.inDays;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              // 챌린지 정보들
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 아이콘, 제목, 디데이
                    Row(
                      children: [
                        Icon(
                          challenge.icon,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          challenge.title,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    // ProgressBar (진행도를 나타내는 이미지)
                    Container(
                      width: double.infinity,
                      height: 10,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 8),

                    // 시작 날짜 ~ 종료 날짜
                    Row(
                      children: [
                        Text(
                          "$startDate ~ $endDate",
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(
                        height: 8), // Add some spacing between the rows

                    Row(
                      children: [
                        Text(
                          "챌린지 성공까지 $daysLeft일 남았어요!",
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),

              // 이동 버튼
              IconButton(
                icon:
                    const Icon(Icons.keyboard_arrow_right, color: Colors.white),
                onPressed: () {
                  // Add your onPressed code here!
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppendChallengeButton extends StatelessWidget {
  const AppendChallengeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      child: const Icon(Icons.add),
      backgroundColor: Colors.yellow, // Customize the color
    );
  }
}
