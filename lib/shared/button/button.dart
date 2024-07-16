import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hatssue/service/theme/theme_service.dart';
import 'package:hatssue/shared/button/button_size.dart';
import 'package:hatssue/shared/button/button_type.dart';
import 'package:hatssue/theme/foundation/app_theme.dart';

class Button extends ConsumerStatefulWidget {
  const Button({
    super.key,
    required this.onPressed,
    ButtonType? type,
    ButtonSize? size,
    bool? isInactive,
    this.text,
    this.width,
    this.color,
    this.backgroundColor,
    this.borderColor,
  })  : type = type ?? ButtonType.fill,
        size = size ?? ButtonSize.medium,
        isInactive = isInactive ?? false;

  final void Function() onPressed;

  final ButtonSize size;
  final ButtonType type;

  final bool isInactive;

  final String? text;

  // 폭
  final double? width;

  // 커스텀 색상
  final Color? color;
  final Color? backgroundColor;
  final Color? borderColor;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ButtonState();
}

//TODO: 이게 맞나..?

class _ButtonState extends ConsumerState<Button> {
  late AppTheme theme;

  @override
  void initState() {
    super.initState();
    theme = ref.read(themeServiceProvider);
  }

  bool isPressed = false;

  bool get isInactive => isPressed || widget.isInactive;

  Color get color => widget.type.getColor(
        theme,
        widget.isInactive,
        widget.color,
      );

  Color get backgroundColor => widget.type.getBackgroundColor(
        theme,
        widget.isInactive,
        widget.backgroundColor,
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: AnimatedContainer(
        duration: const Duration(microseconds: 100),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(widget.size.padding),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.text != null)
              Text(
                widget.text!,
                style: widget.size.getTextStyle(theme).copyWith(
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
