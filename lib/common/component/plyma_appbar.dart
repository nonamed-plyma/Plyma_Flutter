import 'package:flutter/material.dart';
import 'package:plyma/common/component/plyma_text_style.dart';
import 'package:plyma/common/const/plyma_colors.dart';
import 'package:plyma/view/studentMypage_screen.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: PlymaColors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Image.asset(
          'assets/images/Plyma_logo.png',
          height: 20,
          width: 27,
        ),
      ),
      title: Text(
        'PLYMA',
        style: PlymaTextStyle().header(color: PlymaColors.azureBlue),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const StudentmypageScreen()));
          },
          icon: Icon(
            Icons.account_circle_rounded,
            color: PlymaColors.azureBlue,
            size: 30,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}