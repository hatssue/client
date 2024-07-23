import 'package:hatssue/features/challenge/models/challenge.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'challenge_provider.g.dart';

@riverpod
class ChallengeNotifer extends _$ChallengeNotifer {
  @override
  Challenge build() => Challenge(
        id: '',
        name: '',
        startDt: DateTime.now().microsecondsSinceEpoch,
        endDt: DateTime.now().microsecondsSinceEpoch,
      );

  void createChallenge(Challenge challenge) {
    state = state.copyWith(
      id: const Uuid().v4(),
      name: challenge.name,
      startDt: DateTime.now().microsecondsSinceEpoch,
      endDt: DateTime.now().microsecondsSinceEpoch,
    );
  }

  void createChallengeTest(String name) {
    state = state.copyWith(
      id: const Uuid().v4(),
      name: name,
      startDt: DateTime.now().microsecondsSinceEpoch,
      endDt: DateTime.now().microsecondsSinceEpoch,
    );
  }
}
