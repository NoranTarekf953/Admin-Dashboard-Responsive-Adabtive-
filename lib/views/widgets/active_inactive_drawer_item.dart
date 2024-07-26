import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/drawer_item_model.dart';
import '../../utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.model});
  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          model.title,
          style: AppStyles.regular16(context),
        ),
      ),
      leading: SvgPicture.asset(model.image),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.model});
  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          model.title,
          style: AppStyles.styleBold16(context),
        ),
      ),
      leading: SvgPicture.asset(model.image),
      trailing: Container(
        height: 40,
        color: const Color(0xFF4EB7F2),
        width: 3,
      ),
    );
  }
}
