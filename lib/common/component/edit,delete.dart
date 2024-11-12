import 'package:flutter/material.dart';
import 'package:plyma/common/component/plyma_text_style.dart';
import 'package:plyma/common/const/plyma_colors.dart';

class EditDelete extends StatelessWidget {
  const EditDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'edit') {
          // Edit action
        } else if (value == 'delete') {
          // Delete action
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'edit',
          child: Text(
            '수정하기',
            style: PlymaTextStyle().titleDate(color: PlymaColors.black),
          ),
        ),
        PopupMenuItem(
          value: 'delete',
          child: Text(
            '삭제하기',
            style: PlymaTextStyle().titleDate(color: PlymaColors.black),
          ),
        ),
      ],
      icon: Icon(
        Icons.more_vert_rounded,
        color: PlymaColors.black,
      ),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: PlymaColors.gray300),
      ),
    );
  }
}
