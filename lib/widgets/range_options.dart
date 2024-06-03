import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyle.styleSemiBold20(context)),
        const Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0xfff1f1f1),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text('Monthly', style: AppStyle.styleMedium16(context)),
              const SizedBox(width: 18),
              Transform.rotate(
                angle: -90 * pi / 180,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
