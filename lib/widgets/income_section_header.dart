
import 'dart:math';

import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Income', style: AppStyle.styleSemiBold20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(
                    width: 1,
                    color: Color(0xfff1f1f1),
                  ),
                ),
              ),
              child: Row(
                children: [
                  const Text('Monthly', style: AppStyle.styleMedium16),
                  const SizedBox(width: 16),
                  Transform.rotate(
                    angle: -90 * pi / 180,
                    child: const Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
