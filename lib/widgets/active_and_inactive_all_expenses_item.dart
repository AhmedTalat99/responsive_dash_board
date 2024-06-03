import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image),
          const SizedBox(height: 34),
          Text(itemModel.title, style: AppStyle.styleMedium16(context)),
          const SizedBox(height: 8),
          Text(itemModel.date, style: AppStyle.styleRegular14(context)),
          const SizedBox(height: 16),
          Text(itemModel.price, style: AppStyle.styleSemiBold24(context)),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4db7f2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
          ),
          const SizedBox(height: 34),
          Text(itemModel.title,
              style: AppStyle.styleMedium16(context)
                  .copyWith(color: Colors.white)),
          const SizedBox(height: 8),
          Text(itemModel.date,
              style: AppStyle.styleRegular14(context)
                  .copyWith(color: const Color(0xfffafafa))),
          const SizedBox(height: 16),
          Text(itemModel.price,
              style: AppStyle.styleSemiBold24(context)
                  .copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
