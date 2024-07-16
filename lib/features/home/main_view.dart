import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hatssue/service/theme/theme_service.dart';

// 기본 화면 구조 설정
class MainView extends ConsumerWidget {
  const MainView({super.key});

  static final List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    PastRecordView(),
    SettingView()
  ];

  Widget _buildIcon(String normalIcon, String selectedIcon, int index, int selectedIndex) {
    return selectedIndex == index
        ? Image.asset(selectedIcon, width: 24, height: 24)
        : Image.asset(normalIcon, width: 24, height: 24);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavigationProvider);
    final bottomNavigationNotifier = ref.read(bottomNavigationProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text("탑"),
      ),
      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: _buildIcon('assets/images/icons/home.png', 'assets/images/icons/home_selected.png', 0, selectedIndex),
              label: '홈'
          ),
          BottomNavigationBarItem(
              icon: _buildIcon('assets/images/icons/memo.png', 'assets/images/icons/memo_selected.png', 1, selectedIndex),
              label: '지난 기록'
          ),
          BottomNavigationBarItem(
              icon: _buildIcon('assets/images/icons/gear.png', 'assets/images/icons/gear_selected.png', 2, selectedIndex),
              label: '설정'
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xFFADD8FB),
        unselectedItemColor: Color(0xFF9E9E9E),
        backgroundColor: ref.theme.color.surface,
        onTap: (index) {
          bottomNavigationNotifier.selectTab(index);
        },
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('First Page'),
    );
  }
}

class PastRecordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Second Page'),
    );
  }
}

class SettingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Third Page'),
    );
  }
}

// 얘네는 어디로 가야하오 1..
// StateNotifier 정의
class BottomNavigationState extends StateNotifier<int> {
  BottomNavigationState() : super(0);

  void selectTab(int index) {
    state = index;
  }
}

// 얘네는 어디로 가야하오 2..
// StateNotifierProvider 정의
final bottomNavigationProvider = StateNotifierProvider<BottomNavigationState, int>((ref) {
  return BottomNavigationState();
});
