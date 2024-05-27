import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const TransactionHistoryListView()
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Transaction History', style: AppStyle.styleSemiBold20),
        Text(
          'See All',
          style: AppStyle.styleMedium16.copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
