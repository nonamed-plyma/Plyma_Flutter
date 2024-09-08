import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plyma/common/const/plyma_colors.dart';

class LoginButton extends StatelessWidget{
  final VoidCallback onTap;
  final double? width, height;
  final String text;

  const LoginButton({
    super.key,
    required this.onTap,
    required this.text,
    this.width,
    this.height,
});

  @override
  Widget build (BuildContext context) {
    // final mediaQuery = MediaQuery.of(context);
    // final width = mediaQuery.size.width * 0.8;
    // final height = mediaQuery.size.height * 0.07;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: PlymaColors.azureBlue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: PlymaColors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

