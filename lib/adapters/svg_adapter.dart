import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgAdapter extends StatelessWidget {
  final String path;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Alignment alignment;
  final Color? color;

  const SvgAdapter({
    super.key,
    required this.path,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset( 
      path,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      colorFilter: color != null
          ? ColorFilter.mode(
              color!,
              BlendMode.srcIn,
            )
          : null,
    );
  }
}
