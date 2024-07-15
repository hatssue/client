import 'package:flutter/material.dart';

// 상태를 관리하는 위젯
class MainView extends StatefulWidget {
  const MainView({super.key});

  _MainViewState createState() => _MainViewState();
}

// 기본 화면 구조 설정
class _MainViewState extends State<MainView> {

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    homeView(),
    pastRecordView(),
    settingView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("탑"),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: '지난 기록'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: '설정'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class homeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'First Page'
      ),
    );
  }
}

class pastRecordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
          'Second Page'
      ),
    );
  }
}

class settingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
          'third Page'
      ),
    );
  }
}