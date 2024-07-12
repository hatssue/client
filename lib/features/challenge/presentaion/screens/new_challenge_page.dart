import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hatssue/service/theme/theme_service.dart';
import 'package:hatssue/shared/button/button.dart';
import 'package:hatssue/shared/button/button_size.dart';
import 'package:hatssue/shared/button/button_type.dart';
import 'package:hatssue/theme/foundation/app_theme.dart';

class NewChallengePage extends StatelessWidget {
  const NewChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        AppTheme theme = ref.watch(themeServiceProvider);
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: theme.color.surface,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            child: Column(
              children: [
                /// Title
                Text(
                  '새로운 챌린지 만들기',
                  style: theme.typo.headline4.copyWith(
                    color: theme.color.text,
                    fontWeight: theme.typo.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                /// Sub Title
                Text(
                  '시작할 챌린지 제목을 입력해주세요',
                  style: theme.typo.body1.copyWith(
                    color: theme.color.subtext,
                    fontWeight: theme.typo.regular,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                /// TextField
                const TextField(
                  decoration: InputDecoration(
                    labelText: '챌린지 제목을 입력해주세요',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                /// Select List Title
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: theme.color.subtext,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        '많이하는 챌린지를 추천해드려요',
                        style: theme.typo.body2.copyWith(
                          color: theme.color.subtext,
                          fontWeight: theme.typo.regular,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: theme.color.subtext,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                /// Select List
                Expanded(
                  child: ListView(
                    children: const [
                      ChallengeButton('🧘 스트레칭 🧘'),
                      ChallengeButton('✏️ 일기쓰기 ✏️'),
                      ChallengeButton('🚶 산책하기 🚶'),
                      ChallengeButton('📘 영어공부 📘'),
                      ChallengeButton('🌸 일찍 일어나기 🌸'),
                      ChallengeButton('🥛 물 마시기 🥛'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Button(
                        onPressed: () {
                          context.go('/newChallengeNotificationPage');
                        },
                        size: ButtonSize.medium,
                        type: ButtonType.fill,
                        color: theme.color.onPrimary,
                        backgroundColor: theme.color.primary,
                        text: '다음',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class ChallengeButton extends StatelessWidget {
  final String title;

  const ChallengeButton(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final AppTheme theme = ref.watch(themeServiceProvider);
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Button(
            onPressed: () {},
            color: theme.color.onSecondary,
            backgroundColor: theme.color.secondary,
            text: title,
            size: ButtonSize.small,
          ),
        );
      },
    );
  }
}
