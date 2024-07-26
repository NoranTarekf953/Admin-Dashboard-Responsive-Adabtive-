import 'package:flutter/material.dart';
import 'package:user_dashboard/views/widgets/darwer_item.dart';

import '../../models/drawer_item_model.dart';
import '../../utils/app_images.dart';

class DashBoardList extends StatefulWidget {
  DashBoardList({
    super.key,
  });

  @override
  State<DashBoardList> createState() => _DashBoardListState();
}

class _DashBoardListState extends State<DashBoardList> {
  var activeIndex = 0;

  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransaction),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investment', image: Assets.imagesMyInvestment),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: DarwerItem(
                  model: items[index], isActive: activeIndex == index),
            ),
          );
        });
  }
}
