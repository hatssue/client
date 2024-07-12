import 'package:flutter/material.dart';
import 'package:hatssue/theme/dark_theme.dart';
import 'package:hatssue/theme/foundation/app_theme.dart';
import 'package:hatssue/theme/light_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'theme_service.g.dart';

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  AppTheme build() => DarkTheme();

  // AppTheme theme
  void toggleTheme() {
    state = state.brightness == Brightness.dark ? LightTheme() : DarkTheme();
  }
}
