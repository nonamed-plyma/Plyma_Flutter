import 'package:flutter/material.dart';
import 'package:plyma/common/const/plyma_colors.dart';
import 'package:plyma/common/component/plyma_text_style.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PlymaColors.azureBlue,
      height: 100,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '건의사항이 있다면',
              style: PlymaTextStyle().main1(color: Colors.white),
            ),
            Text(
              '플리마가 해결해드려요',
              style: PlymaTextStyle().main2(color: Colors.white),
            ),
            Text(
              '익명으로 건의사항을 남기기만 하면 끝!',
              style: PlymaTextStyle().main1(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
