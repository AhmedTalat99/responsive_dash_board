import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

import 'all_expenses_header.dart';
import 'all_expenses_items_row.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemsRow()
        ],
      ),
    );
  }
}


