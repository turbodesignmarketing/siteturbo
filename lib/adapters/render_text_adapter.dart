// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class RenderTextAdapter extends StatelessWidget {
  final String text;
  String fontFamily;
  double? fontSize;
  double? lineWeight;
  FontWeight? fontWeight;
  Color? color;
  TextDecoration? decoration;
  TextOverflow? overflow;
  int? maxLines;
  TextAlign? textAlign;
  TextRendererStyle? textRenderStyle;

  RenderTextAdapter({
    Key? key,
    required this.text,
    this.fontFamily = 'Poppins',
    this.fontSize,
    this.fontWeight,
    this.color,
    this.decoration,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.textRenderStyle,
    this.lineWeight
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextRenderer(
      style: textRenderStyle,
      child: Text(
        text,
        style: TextStyle(
          height: lineWeight,
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          decoration: decoration,
          overflow: overflow,
        ),
        maxLines: maxLines,
        textAlign: textAlign,
      ),
    );
  }
}
