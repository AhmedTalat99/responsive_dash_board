import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(transactionModel.title, style: AppStyle.styleSemiBold16(context)),
        subtitle: Text(transactionModel.date,
            style: AppStyle.styleRegular16(context)
                .copyWith(color: const Color(0xffAAAAAA))),
        trailing: Text(
          transactionModel.amount,
          style: AppStyle.styleSemiBold16(context).copyWith(
            color: transactionModel.isWithdrawal
                ? const Color(0xfff37e5e)
                : const Color(0xff7cd87a),
          ),
        ),
      ),
    );
  }
}
