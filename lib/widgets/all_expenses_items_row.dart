import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_images.dart';

class AllExpensesItemsRow extends StatefulWidget {
  const AllExpensesItemsRow({super.key});

  @override
  State<AllExpensesItemsRow> createState() => _AllExpensesItemsRowState();
}

class _AllExpensesItemsRowState extends State<AllExpensesItemsRow> {
  final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: GestureDetector(
                    onTap: () {
                      updateIndex(index);
                    },
                    child: AllExpensesItem(
                        itemModel: item, isSelected: selectedIndex == index)),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
                  onTap: () {
                    updateIndex(index);
                  },
                  child: AllExpensesItem(
                      itemModel: item, isSelected: selectedIndex == index)));
        }
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
