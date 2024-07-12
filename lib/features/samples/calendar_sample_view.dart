import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'components/examples/pages/basic.dart';
import 'components/examples/pages/events.dart';
import 'components/examples/pages/range.dart';

class CalendarSampleView extends StatefulWidget {
  const CalendarSampleView({super.key});

  @override
  _CalendarSampleView createState() => _CalendarSampleView();
}

class _CalendarSampleView extends State<CalendarSampleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TableCalendar Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            ElevatedButton(
              child: const Text('홈으로 이동'),
              onPressed: () => {context.go('/')},
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              child: const Text('Basics'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => TableBasicsExample(),
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              child: const Text('Range Selection'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => TableRangeExample(),
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              child: const Text('Events'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => TableEventsExample(),
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            // ElevatedButton(
            //   child: Text('Multiple Selection'),
            //   onPressed: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (_) => TableMultiExample()),
            //   ),
            // ),
            const SizedBox(height: 12.0),
            // ElevatedButton(
            //   child: Text('Complex'),
            //   onPressed: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (_) => TableComplexExample()),
            //   ),
            // ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
