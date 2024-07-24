import 'package:hatssue/features/challenge/models/challenge.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'challenge_provider.g.dart';

@riverpod
class ChallengeNotifer extends _$ChallengeNotifer {
  @override
  Challenge build() => Challenge(
        id: '',
        name: '',
        startDt: DateTime.now().toString(),
        endDt: DateTime.now().toString(),
      );

  void createChallenge(Challenge challenge) {
    state = state.copyWith(
      id: challenge.id,
      name: challenge.name,
      startDt: challenge.name,
      endDt: challenge.name,
    );
  }
}
