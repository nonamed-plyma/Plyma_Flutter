import 'package:flutter/material.dart';
import 'package:plyma/common/component/plyma_text_style.dart';
import 'package:plyma/common/const/plyma_colors.dart';

class CustomTextField extends StatefulWidget {
  final String hinttext;

  const CustomTextField({
    super.key,
    required this.hinttext,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    final textstyle = PlymaTextStyle();
    final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: BorderSide(color: PlymaColors.gray300),
    );
    return TextField(
      style: textstyle.join(color: PlymaColors.gray300),
      decoration: InputDecoration(
        hintText: widget.hinttext,
        hintStyle: TextStyle(
          color: PlymaColors.gray300,
        ),
        enabledBorder: border,
        focusedBorder: border,
        disabledBorder: border,
        errorBorder: border,
        focusedErrorBorder: border,
      ),
    );
  }
}

