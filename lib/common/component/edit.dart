import 'package:flutter/material.dart';
import 'package:plyma/common/component/plyma_text_style.dart';
import 'package:plyma/common/const/plyma_colors.dart';

class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          '이 글을 수정하시겠습니까?',
          style: PlymaTextStyle().myPage(color: PlymaColors.black),
          textAlign: TextAlign.center,
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      actions: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: PlymaColors.gray500),
            foregroundColor: PlymaColors.gray500,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('취소하기'),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.red),
            foregroundColor: Colors.red,
          ),
          onPressed: () {},
          child: const Text('수정하기'),
        ),
      ],
    );
  }
}
