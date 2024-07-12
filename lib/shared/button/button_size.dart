import 'package:flutter/material.dart';
import 'package:hatssue/theme/foundation/app_theme.dart';

enum ButtonSize {
  small,
  medium,
  large;

  //TODO: 임시
  double get padding {
    switch (this) {
      case ButtonSize.small:
        return 8;
      case ButtonSize.medium:
        return 12;
      case ButtonSize.large:
        return 18;
    }
  }

  TextStyle getTextStyle(AppTheme theme) {
    switch (this) {
      case ButtonSize.small:
        return theme.typo.body2;
      case ButtonSize.medium:
        return theme.typo.body1;
      case ButtonSize.large:
        return theme.typo.subtitle2;
    }
  }
}
