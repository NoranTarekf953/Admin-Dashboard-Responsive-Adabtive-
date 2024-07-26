import 'package:flutter/material.dart';
import 'package:user_dashboard/models/drawer_item_model.dart';
import 'package:user_dashboard/views/widgets/active_inactive_drawer_item.dart';

class DarwerItem extends StatelessWidget {
  const DarwerItem({super.key, required this.model, required this.isActive});
  final DrawerItemModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(model: model)
        : InActiveDrawerItem(model: model);
  }
}
