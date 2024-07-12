import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hatssue/service/theme/theme_service.dart';
import 'package:hatssue/theme/foundation/app_theme.dart';
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
    return Consumer(
      builder: (context, ref, child) {
        final AppTheme theme = ref.watch(themeServiceProvider);
        return MaterialApp.router(
            routerConfig: CustomRouter.router,
            debugShowCheckedModeBanner: false,
            // theme: theme,
            theme: ThemeData(
              /// Scaffold
              scaffoldBackgroundColor: theme.color.surface,

              /// AppBar
              appBarTheme: AppBarTheme(
                backgroundColor: theme.color.surface,
                elevation: 0,
                centerTitle: false,
                iconTheme: IconThemeData(
                  color: theme.color.text,
                ),
              ),
            ));
      },
    );
  }
}
