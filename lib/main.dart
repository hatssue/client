import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hatssue/service/theme/theme_service.dart';

import 'utils/custom_router.dart';

/// initializeDateFormatting 셋팅을 위해서 import 필수
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  /// runApp시 자동으로 실행되는 함수
  /// Flutter 앱 시작 전에 필요한 초기화 작업(플러그인 초기화, 리소스 불러오기 등)을 진행하는 함수
  /// runApp 전에 실행되어야 하는 코드가 있기 때문에 호출 필요
  WidgetsFlutterBinding.ensureInitialized();

  /// 언어, 지역 설정에 맞는 날짜 형식 데이터 초기화
  await initializeDateFormatting();

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
