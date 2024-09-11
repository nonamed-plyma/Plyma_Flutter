import 'package:flutter/material.dart';
import 'package:plyma/common/component/plyma_button.dart';
import 'package:plyma/common/component/plyma_text_style.dart';
import 'package:plyma/common/const/plyma_colors.dart';
import 'package:plyma/view/join.dart';
import 'package:plyma/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = PlymaTextStyle();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Plyma_logo.png',
                  height: 59,
                  width: 71,
                ),
                const SizedBox(height: 20),
                Text(
                  '건의사항을 해결해드립니다',
                  style: textStyle.loading(color: PlymaColors.gray600),
                ),
                const SizedBox(height: 80),
                LoginButton(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Scaffold(
                              body: Center(
                                child: LoginScreen(),
                              ),
                            );
                          },
                        ),
                      );
                    },
                    text: '로그인'),
                const SizedBox(height: 10),
                LoginButton(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Scaffold(
                              body: Center(
                                child: JoinScreen(),
                              ),
                            );
                          },
                        ),
                      );
                    },
                    text: '회원가입'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
