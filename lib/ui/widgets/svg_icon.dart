import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon(
    this.value, {
    super.key,
    this.size,
  });
  final double? size;
  final String value;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      value,
      height: size ?? 24,
      width: size ?? 24,
    );
  }
}
