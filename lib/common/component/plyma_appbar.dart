import 'package:flutter/material.dart';
import 'package:plyma/common/component/plyma_text_style.dart';
import 'package:plyma/common/const/plyma_colors.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: PlymaColors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/Plyma_logo.png',
            height: 23,
            width: 30,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              'PLYMA',
              style: PlymaTextStyle().header(color: PlymaColors.azureBlue), //이 부분이 대체 왜 적용이 안되는건데ㅠ
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_rounded,
                color: PlymaColors.azureBlue,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}