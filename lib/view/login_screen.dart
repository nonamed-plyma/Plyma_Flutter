import 'package:flutter/material.dart';
import 'package:plyma/common/component/plyma_button.dart';
import 'package:plyma/common/component/plyma_login.dart';
import 'package:plyma/common/component/plyma_text_style.dart';
import 'package:plyma/common/const/plyma_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController numberController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? errorMessage;

  void _login() {
    FocusScope.of(context).unfocus();
    setState(() {
      bool isNumber = numberController.text.length != 4;
      bool isId = idController.text.length != 4 || idController.text.isEmpty;
      bool isPassword = passwordController.text.length < 2 || passwordController.text.length > 8;

      if(isNumber || isId || isPassword){
        errorMessage = '입력하신 정보를 확인해주세요';
      } else{
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
                      hintText: '학번을 입력하세요 (4글자)',
                      controller: numberController,
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      hintText: '아이디를 입력하세요 (4글자)',
                      controller: idController,
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
                            style: PlymaTextStyle().match(
                                color: PlymaColors.azureBlue),
                          ),
                        ),
                      ),
                    const SizedBox(height: 20),
                    LoginButton(
                        onTap: _login,
                        text: '로그인'
                    ),
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
