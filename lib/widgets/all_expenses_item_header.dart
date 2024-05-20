import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(shape: OvalBorder()),
          child: SvgPicture.asset(image),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -180 * pi / 180,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
      ],
    );
  }
}
