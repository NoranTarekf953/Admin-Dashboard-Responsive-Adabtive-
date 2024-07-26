import 'package:flutter/material.dart';
import 'package:user_dashboard/utils/app_styles.dart';
import 'package:user_dashboard/views/my_card_page_view.dart';

import 'widgets/transaction_history.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Card', style: AppStyles.styleSemiBold20(context)),
          const SizedBox(
            height: 15,
          ),
          MyCardPageView(),
          const Divider(
            thickness: 1,
            height: 30,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistory()
        ],
      ),
    );
  }
}
