import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hatssue/theme/dark_theme.dart';
import 'package:hatssue/theme/foundation/app_theme.dart';
import 'package:hatssue/theme/light_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_service.g.dart';

@riverpod
class ThemeService extends _$ThemeService {
  @override
  AppTheme build() => DarkTheme();

  /// 테마 변경
  void toggleTheme() {
    state = state.brightness == Brightness.light ? DarkTheme() : LightTheme();
  }
}

extension ThemeServiceExt on WidgetRef {
  ThemeService get themeService => watch(themeServiceProvider.notifier);
  AppTheme get theme => watch(themeServiceProvider);
  AppColor get color => theme.color;
  AppTypo get typo => theme.typo;
}