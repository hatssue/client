import 'package:flutter/material.dart';
import 'package:hatssue/theme/foundation/app_theme.dart';

enum ButtonType {
  fill,
  flat, // icon
  outline;

  Color getColor(
    AppTheme theme,
    bool isInactive, [
    Color? color,
  ]) {
    switch (this) {
      case ButtonType.fill:
        return color ?? theme.color.onPrimary;
      case ButtonType.flat:
      case ButtonType.outline:
        return color ?? theme.color.primary;
    }
  }

  Color getBackgroundColor(
    AppTheme theme,
    bool isInactive, [
    Color? color,
  ]) {
    switch (this) {
      case ButtonType.fill:
        return color ?? theme.color.primary;
      case ButtonType.flat:
      case ButtonType.outline:
        return color ?? Colors.transparent;
    }
  }
}
