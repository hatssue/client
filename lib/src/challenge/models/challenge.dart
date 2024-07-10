class Challenge {
  final String name;
  final String startDt;
  final String endDt;
  final bool useNotification;

  // TODO: 알림 요일 데이터 타입 / 관리 어떻게 할지 정하기

  /// 알림 시간 (hhmm 또는 HHmm)
  final String notificationTime;

  const Challenge({
    required this.name,
    required this.startDt,
    required this.endDt,
    required this.useNotification,
    required this.notificationTime,
  });
}
