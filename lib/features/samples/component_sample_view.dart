import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hatssue/features/samples/components/bottom_sheet_sample_view.dart';
import 'package:hatssue/shared/base_bottom_sheet/base_bottom_sheet.dart';
import 'package:hatssue/shared/button/button.dart';

class ComponentSampleView extends ConsumerWidget {
  const ComponentSampleView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Button(
              text: 'BottomSheet',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const BottomSheetSampleView(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
