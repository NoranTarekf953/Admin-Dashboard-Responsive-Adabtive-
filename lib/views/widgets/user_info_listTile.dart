import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_dashboard/models/user_info_model.dart';

import '../../utils/app_images.dart';
import '../../utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.model});
  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(model.image),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            model.name,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            model.email,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
