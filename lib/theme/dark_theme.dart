import 'package:flutter/material.dart';
import 'package:hatssue/theme/foundation/app_theme.dart';
import 'package:hatssue/theme/res/palette.dart';
import 'package:hatssue/theme/res/typo.dart';

class DarkTheme implements AppTheme {
  @override
  AppColor color = AppColor(
    surface: Palette.primary02,
    // background: background,
    text: Palette.grey01,
    subtext: Palette.grey04, // 임시
    // toastContainer: toastContainer,
    // onToastContainer: onToastContainer,
    // hint: hint,
    // hintContainer: hintContainer,
    // onHintContainer: onHintContainer,
    // inactive: inactive,
    // inactiveContainer: inactiveContainer,
    // onInactiveContainer: onInactiveContainer,
    primary: Palette.primary01,
    onPrimary: Palette.primary02,
    secondary: Palette.grey10,
    onSecondary: Palette.grey01,
    tertiary: Palette.grey09,
    onTertiary: Palette.blue01,

    boxContainer: Palette.grey08,
    onBoxContainer: Palette.white,
  );

  @override
  Brightness brightness = Brightness.dark;

  @override
  late AppTypo typo = AppTypo(
    typo: const NotoSansKR(),
    fontColor: color.text,
  );
}
