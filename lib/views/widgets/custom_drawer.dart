import 'package:flutter/material.dart';
import 'package:user_dashboard/models/drawer_item_model.dart';
import 'package:user_dashboard/models/user_info_model.dart';
import 'package:user_dashboard/utils/app_images.dart';
import 'package:user_dashboard/views/widgets/active_inactive_drawer_item.dart';
import 'Drawer_item_listview.dart';
import 'user_info_listTile.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              model: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  name: 'Lekan Okeowo',
                  email: 'demo@gmail.com'),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
            ),
          ),
          DashBoardList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Expanded(
                      child: SizedBox(
                    height: 20,
                  )),
                  InActiveDrawerItem(
                    model: DrawerItemModel(
                        title: 'Setting system', image: Assets.imagesSetting),
                  ),
                  InActiveDrawerItem(
                      model: DrawerItemModel(
                          title: 'Logout account', image: Assets.imagesLogout)),
                  const SizedBox(
                    height: 48,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
