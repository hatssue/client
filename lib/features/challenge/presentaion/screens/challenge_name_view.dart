import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hatssue/service/theme/theme_service.dart';
import 'package:hatssue/shared/button/button.dart';
import 'package:hatssue/shared/button/button_size.dart';
import 'package:hatssue/shared/button/button_type.dart';

class ChallengeNameView extends ConsumerStatefulWidget {
  const ChallengeNameView({super.key});

  @override
  ConsumerState<ChallengeNameView> createState() => _ChallengeNameViewState();
}

class _ChallengeNameViewState extends ConsumerState<ChallengeNameView> {
  final List<String> egChallengeList = [
    '🧘 스트레칭 🧘',
    '✏️ 일기쓰기 ✏️',
    '🚶 산책하기 🚶',
    '📘 영어공부 📘',
    '🌸 일찍 일어나기 🌸',
    '🥛 물 마시기 🥛',
  ];

  @override
  Widget build(BuildContext context) {
    // String challengeName = '';

    TextEditingController challengeNameController = TextEditingController();

    void onPressed(String title) {
      print('선택 $title');
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/');
          },
        ),
        backgroundColor: ref.theme.color.surface,
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
              style: ref.theme.typo.headline4.copyWith(
                color: ref.theme.color.text,
                fontWeight: ref.theme.typo.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /// Sub Title
            Text(
              '시작할 챌린지 제목을 입력해주세요',
              style: ref.theme.typo.body1.copyWith(
                color: ref.theme.color.subtext,
                fontWeight: ref.theme.typo.regular,
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            /// TextField
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: '',
                hintText: '챌린지 제목을 입력해주세요',
                fillColor: ref.color.textFieldContainer,
                // focusColor: ref.color.primary,
                // hoverColor: ref.color.primary,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              controller: challengeNameController,
              style: ref.typo.body1.copyWith(
                color: ref.color.onPrimary,
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
                    color: ref.theme.color.subtext,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Text(
                    '많이 하는 챌린지를 추천해드려요',
                    style: ref.theme.typo.body2.copyWith(
                      color: ref.theme.color.subtext,
                      fontWeight: ref.theme.typo.regular,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    color: ref.theme.color.subtext,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            /// Select List
            Expanded(
              child: ListView.builder(
                itemCount: egChallengeList.length,
                itemBuilder: (context, index) {
                  return ChallengeButton(
                    title: egChallengeList[index],
                    onPressed: onPressed,
                  );
                },
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
                    color: ref.theme.color.onPrimary,
                    backgroundColor: ref.theme.color.primary,
                    text: '다음',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChallengeButton extends ConsumerWidget {
  final String title;
  final Function(String title) onPressed;

  const ChallengeButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () {
          onPressed(title);
        },
        child: Container(
          decoration: BoxDecoration(
            color: ref.color.secondary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.5),
            child: Text(
              textAlign: TextAlign.center,
              title,
              style: ref.typo.body2.copyWith(
                fontSize: 13,
                fontWeight: ref.typo.medium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
