import 'package:flutter/material.dart';
import 'package:plyma/common/component/studentMypage_heart_view.dart';
import 'package:plyma/common/component/studentMypage_post_view.dart';
import 'package:plyma/common/component/teacherMypage_heart_view.dart';
import 'package:plyma/common/component/teacherMypage_post_view.dart';
import 'package:plyma/common/const/plyma_colors.dart';
import 'package:plyma/view/main_screen.dart';

class TeachermypageScreen extends StatelessWidget {
  const TeachermypageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PlymaColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: PlymaColors.azureBlue,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const MainScreen()));
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        children: const [
          TeachermypagePostScreen(),
          TeachermypageHeartScreen(),
        ],
      ),
    );
  }
}
