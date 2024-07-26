import 'package:flutter/material.dart';
import 'package:user_dashboard/views/widgets/user_info_listTile.dart';

import '../../models/user_info_model.dart';
import '../../utils/app_images.dart';

class LatestTransactionList extends StatelessWidget {
  LatestTransactionList({
    super.key,
  });
  final List<UserInfoModel> items = [
    UserInfoModel(
        image: Assets.imagesAvatar2,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: 'Josua Nunito',
        email: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail')
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              model: e,
            ),
          );
        }).toList(),
      ),
    );
  }
}
