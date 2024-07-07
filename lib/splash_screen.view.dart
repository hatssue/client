import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 일정 시간 뒤 다른 화면으로 이동
    Timer(Duration(seconds: 1), () {

      // 앱을 구동하기 위한 기초 설정을 마친 뒤 메인 화면으로 이동
      context.go('/myHomePage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(

            // 임시로 런치 스크린 이미지를 피그마에 있는 것으로 사용했으나, 추후에 수정 필요
            image: AssetImage('assets/splash_screen/launch_screen_image.png'), // 로컬 이미지 경로
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// assets/splash_screen/launch_screen_image.png