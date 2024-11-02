import 'package:flutter/material.dart';
import 'package:plyma/common/const/plyma_colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: PlymaColors.gray300),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              'assets/images/Plyma_logo.png',
              height: 16,
              width: 20,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: '키워드를 입력해주세요',
                hintStyle: TextStyle(color: PlymaColors.gray300),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
