import 'package:flutter/material.dart';
import 'package:hatssue/shared/base_bottom_sheet/base_bottom_sheet.dart';
import 'package:hatssue/shared/button/button.dart';
import 'package:hatssue/shared/button/button_size.dart';

class BottomSheetSampleView extends StatelessWidget {
  const BottomSheetSampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('바텀 시트'),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Button(
                      size: ButtonSize.large,
                      text: '취소',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Button(
                      size: ButtonSize.large,
                      text: '확인',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
