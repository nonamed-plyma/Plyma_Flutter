import 'package:flutter/material.dart';
import 'package:plyma/common/component/plyma_button.dart';
import 'package:plyma/common/component/plyma_login.dart';
import 'package:plyma/common/component/plyma_text_style.dart';
import 'package:plyma/common/const/plyma_colors.dart';

class TeacherLoginScreen extends StatefulWidget {
  const TeacherLoginScreen({
    super.key,
  });

  @override
  State<TeacherLoginScreen> createState() => _TeacherLoginScreenState();
}

class _TeacherLoginScreenState extends State<TeacherLoginScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? errorMessage;

  void _teacherlogin() {
    FocusScope.of(context).unfocus();
    setState(() {
      bool isNumber = nameController.text.length != 4;
      bool isId = idController.text.length != 4 || idController.text.isEmpty;
      bool isPassword = passwordController.text.length < 2 || passwordController.text.length > 8;

      if (isNumber || isId || isPassword) {
        errorMessage = '입력하신 정보를 확인해주세요';
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
                      hintText: '이름을 입력해주세요 (1~4자)',
                      controller: nameController,
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      hintText: '비밀번호를 입력하세요 (4~18자)',
                      controller: passwordController,
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
                        onTap: _teacherlogin,
                        text: '로그인'),
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
