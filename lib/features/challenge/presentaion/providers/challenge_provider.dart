import 'package:hatssue/features/challenge/models/challenge.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'challenge_provider.g.dart';

@riverpod
class ChallengeNotifer extends _$ChallengeNotifer {
  @override
  Challenge build() => Challenge(
        id: '',
        name: '',
        // TODO: 디폴트 값을 Nullable로 줄 수 있는지 찾기
        startDt: DateTime.now(),
        endDt: DateTime.now(),
      );

  void createChallenge(Challenge challenge) {
    state = state.copyWith(
      id: challenge.id,
      name: challenge.name,
      startDt: challenge.startDt,
      endDt: challenge.endDt,
    );
  }
}
