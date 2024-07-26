import 'package:flutter/material.dart';

import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class MyCardItem extends StatelessWidget {
  MyCardItem({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xFF4EB7F2),
            borderRadius: BorderRadius.circular(12),
            backgroundBlendMode: BlendMode.multiply,
            image: const DecorationImage(
                image: AssetImage(Assets.imagesBackground))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 20, right: 30, top: 10),
              title: Text(
                'Name card',
                style:
                    AppStyles.regular16(context).copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: Icon(
                Icons.image_outlined,
                color: Color(0xFF292D32),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.regular16(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
