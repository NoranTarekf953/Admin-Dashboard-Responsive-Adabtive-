import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFFF1F1F1))),
            child: Row(
              children: [
                Text(
                  'Monthly',
                  style: AppStyles.styleMedium16(context),
                ),
                const Icon(Icons.arrow_drop_down_outlined),
              ],
            ))
      ],
    );
  }
}
