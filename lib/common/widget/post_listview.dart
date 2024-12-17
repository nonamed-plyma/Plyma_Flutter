import 'package:flutter/material.dart';
import 'package:plyma/common/const/plyma_colors.dart';
import 'package:plyma/common/component/plyma_text_style.dart';

class PostListview extends StatelessWidget {
  const PostListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: PlymaColors.gray300,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: PlymaColors.azureBlue,
              ),
              title: Row(
                children: [
                  Text(
                    '제목',
                    style: PlymaTextStyle().listTitle(color: Colors.black),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '2024-00-00',
                    style: PlymaTextStyle().date(color: PlymaColors.gray300),
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline,
                      size: 15,
                    ),
                  ),
                  const Text('5'),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                      size: 15,
                    ),
                  ),
                  const Text('5'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                          Icons.more_vert_rounded,
                      ),
                  ),
                ],
              ),
              onTap: () {},
            ),
          ),
        );
      },
    );
  }
}
