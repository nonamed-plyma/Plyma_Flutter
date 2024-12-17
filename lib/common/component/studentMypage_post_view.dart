import 'package:flutter/material.dart';
import 'package:plyma/common/component/plyma_text_style.dart';
import 'package:plyma/common/const/plyma_colors.dart';
import 'package:plyma/common/component/edit,delete.dart';
import 'package:plyma/common/widget/logout.dart';

class StudentMypagePostScreen extends StatefulWidget {
  const StudentMypagePostScreen({super.key});

  @override
  State<StudentMypagePostScreen> createState() => _StudentMypagePostScreenState();
}

class _StudentMypagePostScreenState extends State<StudentMypagePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                      color: PlymaColors.azureBlue,
                      size: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '정지윤',
                            style: PlymaTextStyle()
                                .myPage(color: PlymaColors.black),
                          ),
                          Text(
                            '1309',
                            style: PlymaTextStyle()
                                .myPage(color: PlymaColors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Logout(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                '내가 쓴 글',
                style: PlymaTextStyle().mypageHeader(color: PlymaColors.black),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: PlymaColors.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        title: Row(
                          children: [
                            Text(
                              '제목',
                              style: PlymaTextStyle()
                                  .listTitle(color: Colors.black),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '2024-00-00',
                              style: PlymaTextStyle()
                                  .date(color: PlymaColors.gray300),
                            ),
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                color: PlymaColors.black,
                                Icons.favorite_outline,
                                size: 15,
                              ),
                            ),
                            const Text('5'),
                            //const SizedBox(width: 8),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                color: PlymaColors.black,
                                Icons.comment_outlined,
                                size: 15,
                              ),
                            ),
                            const Text('5'),
                            const EditDelete(),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
