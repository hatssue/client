import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hatssue/theme/dark_theme.dart';
import 'package:hatssue/theme/foundation/app_theme.dart';
import 'package:hatssue/theme/light_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final themeProvider =
    NotifierProvider<ThemeService, AppTheme>(ThemeService.new);

class ThemeService extends Notifier<AppTheme> {
  @override
  AppTheme build() => DarkTheme();

  void toggleTheme() {
    state = state.brightness == Brightness.dark ? LightTheme() : DarkTheme();
  }
}

// buildContext에 추가
// extension ThemeServiceExt on BuildContext {
//   ThemeService get themeService => listen<ThemeService>();
//   AppTheme get theme => themeService
// }
