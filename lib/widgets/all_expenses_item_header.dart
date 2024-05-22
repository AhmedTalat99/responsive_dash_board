import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: imageBackground ?? const Color(0xfffafafa),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4eb7f2), BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -180 * pi / 180,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? const Color(0xff064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
