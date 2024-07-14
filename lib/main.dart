import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hatssue/service/theme/theme_service.dart';

import 'utils/custom_router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: CustomRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        /// Scaffold
        scaffoldBackgroundColor: ref.theme.color.surface,

        /// AppBar
        appBarTheme: AppBarTheme(
          backgroundColor: ref.theme.color.surface,
          elevation: 0,
          centerTitle: false,
          iconTheme: IconThemeData(
            color: ref.theme.color.text,
          ),
        ),
      ),
    );
  }
}
