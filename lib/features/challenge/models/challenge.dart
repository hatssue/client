import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenge.freezed.dart';
part 'challenge.g.dart';

@freezed
class Challenge with _$Challenge {
  const factory Challenge({
    required String id,
    required String name,
    required DateTime? startDt, // 시작 날짜
    required DateTime? endDt, // 종료 날짜
    // String? notificationType, // 알림 유형?
    // String? notificationTime, // 알림 시간 (HH:mm ...?)
  }) = _Challenge;

  factory Challenge.fromJson(Map<String, dynamic> json) =>
      _$ChallengeFromJson(json);
}
