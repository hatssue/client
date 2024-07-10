import 'package:flutter/material.dart';

abstract class Typo {
  const Typo({
    required this.name,
    required this.light,
    required this.regular,
    required this.medium,
    required this.bold,
  });

  final String name;
  final FontWeight light;
  final FontWeight regular;
  final FontWeight medium;
  final FontWeight bold;
}

class NotoSansKR implements Typo {
  const NotoSansKR();

  @override
  final String name = 'noto_sans_kr';

  @override
  final FontWeight light = FontWeight.w300;

  @override
  final FontWeight regular = FontWeight.w400;

  @override
  final FontWeight medium = FontWeight.w500;

  @override
  final FontWeight bold = FontWeight.w700;
}
