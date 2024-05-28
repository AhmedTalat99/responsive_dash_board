import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static List<ItemDetailsModel> items = [
    ItemDetailsModel(
        color: const Color(0xFF208CC8), title: 'Design service', value: '%40'),
    ItemDetailsModel(
        color: const Color(0xFF4EB7F2), title: 'Design product', value: '%25'),
    ItemDetailsModel(
        color: const Color(0xFF064061), title: 'product royalti', value: '%20'),
    ItemDetailsModel(
        color: const Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return ItemDetails(itemDetailsModel: items[index]);
      },
    );
  }
}
