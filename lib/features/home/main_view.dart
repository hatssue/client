import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hatssue/features/home/home_view.dart';
import 'package:hatssue/features/home/past_record_view.dart';
import 'package:hatssue/features/home/setting_view.dart';
import 'package:hatssue/service/theme/theme_service.dart';

class BottomNavigationState extends StateNotifier<int> {
  BottomNavigationState() : super(0);

  void selectTab(int index) {
    state = index;
  }
}

final bottomNavigationProvider =
    StateNotifierProvider<BottomNavigationState, int>((ref) {
  return BottomNavigationState();
});

// 기본 화면 구조 설정
class MainView extends ConsumerWidget {
  const MainView({super.key});

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const PastRecordView(),
    const SettingView()
  ];

  Widget _buildIcon(
      String normalIcon, String selectedIcon, int index, int selectedIndex) {
    return selectedIndex == index
        ? Image.asset(
            selectedIcon,
            width: 24,
            height: 24,
          )
        : Image.asset(
            normalIcon,
            width: 24,
            height: 24,
          );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavigationProvider);
    final bottomNavigationNotifier = ref.read(
      bottomNavigationProvider.notifier,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "탑",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(
              'assets/images/icons/home.png',
              'assets/images/icons/home_selected.png',
              0,
              selectedIndex,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
              'assets/images/icons/memo.png',
              'assets/images/icons/memo_selected.png',
              1,
              selectedIndex,
            ),
            label: '지난 기록',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
              'assets/images/icons/gear.png',
              'assets/images/icons/gear_selected.png',
              2,
              selectedIndex,
            ),
            label: '설정',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: const Color(0xFFADD8FB),
        unselectedItemColor: const Color(0xFF9E9E9E),
        backgroundColor: ref.theme.color.surface,

        // 폰트 적용이 안됨
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
        onTap: (index) {
          bottomNavigationNotifier.selectTab(index);
        },
      ),
    );
  }
}
