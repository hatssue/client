import 'package:flutter/material.dart';
import 'package:hatssue/theme/res/typo.dart';

part 'app_color.dart';
part 'app_typo.dart';

abstract class AppTheme {
  late final Brightness brightness;
  late final AppColor color;
  late final AppTypo typo;
}
