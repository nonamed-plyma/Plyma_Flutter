import 'package:flutter/material.dart';
import 'package:plyma/common/component/plyma_button.dart';
import 'package:plyma/common/component/plyma_login.dart';
import 'package:plyma/common/component/plyma_text_style.dart';
import 'package:plyma/common/const/plyma_colors.dart';

class TeacherJoinScreen extends StatefulWidget {
  const TeacherJoinScreen({super.key});

  @override
  State<TeacherJoinScreen> createState() => _TeacherJoinScreenState();
}

class _TeacherJoinScreenState extends State<TeacherJoinScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController checkController = TextEditingController();
  String? errorMessage;

  void _teacherjoin() {
    FocusScope.of(context).unfocus();
    setState(() {
      bool isName = nameController.text.isEmpty || nameController.text.length > 4;
      bool isPassword = passwordController.text.length <= 1 || passwordController.text.length > 8;
      bool isId = idController.text.length > 4 || idController.text.isEmpty;
      bool isPassCheck = passwordController.text != checkController.text;

      if (isName || isPassword || isId || isPassCheck) {
        errorMessage = "입력하신 정보를 확인해주세요.";
      } else {
        errorMessage = null;
      }
    });
  }

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
                    const SizedBox(height: 50),
                    CustomTextField(
                      hintText: '이름을 입력하세요 (1~4자)',
                      controller: nameController,
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      hintText: '아이디를 입력하세요(4~10자)',
                      controller: idController,
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      hintText: '비밀번호를 입력하세요(1~8자)',
                      controller: passwordController,
                      password: true,
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      hintText: '비밀번호를 재입력하세요',
                      controller: checkController,
                      password: true,
                    ),
                    if (errorMessage != null)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            errorMessage!,
                            style: PlymaTextStyle()
                                .match(color: PlymaColors.azureBlue),
                          ),
                        ),
                      ),
                    const SizedBox(height: 20),
                    LoginButton(
                        onTap: _teacherjoin,
                        text: '회원가입'),
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
