// lib/features/widgets/image/custom_image.dart

// Flutter imports:
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:

class CustomIcon extends StatelessWidget {
  final String path;
  final double? size;
  final BoxFit fit;
  final Color? color;

  const CustomIcon({
    super.key,
    required this.path,
    this.size,
    this.fit = BoxFit.contain,
    this.color,
  });

  bool get _isSvg => path.toLowerCase().endsWith('.svg');

  @override
  Widget build(BuildContext context) {
    final double defaultSize = size ?? AppSizes.square.r20;

    if (_isSvg) {
      return SvgPicture.asset(
        path,
        width: defaultSize,
        height: defaultSize,
        fit: fit,
        color: color,
      );
    } else {
      return Image.asset(
        path,
        width: defaultSize,
        height: defaultSize,
        fit: fit,
      );
    }
  }
}
