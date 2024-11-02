import 'package:flutter/material.dart';
import 'package:plyma/common/component/plyma_text_style.dart';
import 'package:plyma/common/const/plyma_colors.dart';
import 'package:plyma/common/component/plyma_appbar.dart';
import 'package:plyma/common/widget/header_container.dart';
import 'package:plyma/common/widget/post_listview.dart';
import 'package:plyma/common/widget/search_field.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderContainer(),
          const Padding(
            padding: EdgeInsets.all(20),
            child: SearchField(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              '게시글 목록',
              style: PlymaTextStyle().list(color: PlymaColors.gray500),
            ),
          ),
          const Expanded(
            child: PostListview(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: PlymaColors.azureBlue,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}