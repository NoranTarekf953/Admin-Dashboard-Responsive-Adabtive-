import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:user_dashboard/views/my_card_item.dart';

class MyCardPageView extends StatelessWidget {
  MyCardPageView({super.key});
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpandablePageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: List.generate(3, (index) => MyCardItem())),
        SizedBox(
          height: 20,
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: Color(0xFF4EB7F2), dotHeight: 8, dotWidth: 8),
        ),
      ],
    );
  }
}
