import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
/*         Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(width: 16),
            Expanded(
                child: TitleTextField(
                    title: 'Customer Email', hint: 'Type customer email')),
          ],
        ),
        SizedBox(height: 12),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Item name', hint: 'Type customer name')),
            SizedBox(width: 16),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD')),
          ],
        ), */
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0xff4db7f2),
                backGroundColor: Colors.transparent,
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
