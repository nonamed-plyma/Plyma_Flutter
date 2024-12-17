import 'package:flutter/material.dart';
import 'package:plyma/common/component/studentMypage_heart_view.dart';
import 'package:plyma/common/component/studentMypage_post_view.dart';
import 'package:plyma/common/const/plyma_colors.dart';
import 'package:plyma/view/main_screen.dart';

class StudentmypageScreen extends StatefulWidget {
  const StudentmypageScreen({super.key});

  @override
  State<StudentmypageScreen> createState() => _StudentmypageScreenState();
}

class _StudentmypageScreenState extends State<StudentmypageScreen> {
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
          StudentMypagePostScreen(),
          StudentmypageHeartScreen(),
        ],
      ),
    );
  }
}