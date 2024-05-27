import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Transaction History', style: AppStyle.styleSemiBold20),
            Text(
              'See All',
              style: AppStyle.styleMedium16.copyWith(
                color: const Color(0xFF4EB7F2),
              ),
            ),
          ],
        )
      ],
    );
  }
}
