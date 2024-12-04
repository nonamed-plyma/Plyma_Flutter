import 'package:flutter/material.dart';
import 'package:plyma/common/component/teacherMypage_heart_view.dart';
import 'package:plyma/common/component/teacherMypage_post_view.dart';
import 'package:plyma/common/const/plyma_colors.dart';
import 'package:plyma/view/main_screen.dart';

class TeachermypageScreen extends StatefulWidget {
  const TeachermypageScreen({super.key});

  @override
  State<TeachermypageScreen> createState() => _TeachermypageScreenState();
}

class _TeachermypageScreenState extends State<TeachermypageScreen> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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