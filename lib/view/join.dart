import 'package:flutter/material.dart';
import 'package:plyma/common/component/plyma_button.dart';
import 'package:plyma/common/component/plyma_login.dart';
import 'package:plyma/common/const/plyma_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JoinScreen(),
    );
  }
}

class JoinScreen extends StatelessWidget {
  const JoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PlymaColors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: PlymaColors.azureBlue,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 150),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                          'assets/images/Plyma_logo.png',
                        height: 59,
                        width: 71,
                      ),
<<<<<<< Updated upstream
                      const SizedBox(height: 50),
                      const CustomTextField(hinttext: '이름을 입력해주세요 (1~4자)'),
=======
                      const SizedBox(height: 30),
                      const CustomTextField(hintText: '이름을 입력해주세요 (1~4자)'),
>>>>>>> Stashed changes
                      const SizedBox(height: 10),
                      const CustomTextField(hintText: '학번을 입력해주세요(4글자)'),
                      const SizedBox(height: 10),
<<<<<<< Updated upstream
                      const CustomTextField(hinttext: '비밀번호를 입력하세요(1~8자)'),
                      const SizedBox(height: 40),
=======
                      const CustomTextField(hintText: '비밀번호를 입력하세요(1~8자)'),
                      const SizedBox(height: 50),
>>>>>>> Stashed changes
                      LoginButton(onTap: () {}, text: '회원가입'),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ),
    );
  }
}
