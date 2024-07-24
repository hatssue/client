import 'package:flutter/material.dart';
import 'package:hatssue/theme/foundation/app_theme.dart';
import 'package:hatssue/theme/res/palette.dart';
import 'package:hatssue/theme/res/typo.dart';

class LightTheme implements AppTheme {
  @override
  AppColor color = AppColor(
    surface: Palette.grey01,
    // background: background,
    text: Palette.primary02,
    subtext: Palette.primary02,
    // toastContainer: toastContainer,
    // onToastContainer: onToastContainer,
    // hint: hint,
    // hintContainer: hintContainer,
    // onHintContainer: onHintContainer,
    // inactive: inactive,
    // inactiveContainer: inactiveContainer,
    // onInactiveContainer: onInactiveContainer,
    /// dark mode와 동일 (임시)
    primary: Palette.primary01,
    onPrimary: Palette.primary02,
    secondary: Palette.grey10,
    onSecondary: Palette.grey01,
    tertiary: Palette.grey09,
    onTertiary: Palette.blue01,
    boxContainer: Palette.grey08,
    onBoxContainer: Palette.white,
    textFieldContainer: Palette.grey08,
    onTextFieldContainer: Palette.white,
    textFieldHint: Palette.grey04,
  );

  @override
  Brightness brightness = Brightness.light;

  @override
  late AppTypo typo = AppTypo(
    typo: const NotoSansKR(),
    fontColor: color.text,
  );
}
