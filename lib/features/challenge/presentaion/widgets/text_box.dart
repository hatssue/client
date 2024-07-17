import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextBox extends ConsumerWidget {
  const TextBox({
    super.key,
    required this.child,
    // required this.padding,
    required this.boxColor,
  });

  final Widget child;
  // final double padding;
  final Color boxColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,

      // child: Padding(
      //   padding: EdgeInsets.symmetric(vertical: padding),
      //   child: child,
      // ),
    );
  }
}
