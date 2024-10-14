import 'package:flutter/material.dart';
import '../const/plyma_colors.dart';

class PlymaTextStyle {
  TextStyle button({required Color color}) {
    return TextStyle(
      color: PlymaColors.white,
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle join ({required Color color}) {
    return TextStyle(
      color: PlymaColors.gray300,
      fontSize: 15,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle loading ({required Color color}) {
    return TextStyle(
      color: PlymaColors.gray600,
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle match ({required Color color}) {
    return TextStyle(
      color: PlymaColors.azureBlue,
      fontSize: 8,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle header ({required Color color}) {
    return TextStyle(
      color: PlymaColors.azureBlue,
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle main1 ({required Color color}) {
    return TextStyle(
      color: PlymaColors.white,
      fontSize: 10,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle main2 ({required Color color}) {
    return TextStyle(
      color: PlymaColors.white,
      fontSize: 15,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle list ({required Color color}) {
    return TextStyle(
      color: PlymaColors.gray500,
      fontSize: 15,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle listTitle ({required Color color}) {
    return TextStyle(
      color: PlymaColors.black,
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle date ({required Color color}) {
    return TextStyle(
      color: PlymaColors.gray300,
      fontSize: 8,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle title ({required Color color}) {
    return TextStyle(
      color: PlymaColors.black,
      fontSize: 24,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle titleDate ({required Color color}) {
    return TextStyle(
      color: PlymaColors.black,
      fontSize: 11,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle context ({required Color color}) {
    return TextStyle(
      color: PlymaColors.black,
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w300,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle write ({required Color color}) {
    return TextStyle(
      color: PlymaColors.gray300,
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle mytDate ({required Color color}) {
    return TextStyle(
      color: PlymaColors.gray300,
      fontSize: 5,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle logout ({required Color color}) {
    return TextStyle(
      color: PlymaColors.white,
      fontSize: 9,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    );
  }
  TextStyle myPage ({required Color color}) {
    return TextStyle(
      color: PlymaColors.black,
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    );
  }
}