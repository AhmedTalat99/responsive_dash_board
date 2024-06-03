import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'dots_indicator.dart';
import 'my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!
          .round(); // i called round not toInt ;because that will make speed of scrool better
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        SizedBox(
          width: 420,
          child: Text(
            'My card',
            style:
                AppStyle.styleMedium20(context).copyWith(color: const Color(0xff064061)),
          ),
        ),
        const SizedBox(height: 20),
        MyCardsPageView(pageController: pageController),
        const SizedBox(height: 20),
        DotsIndicator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
