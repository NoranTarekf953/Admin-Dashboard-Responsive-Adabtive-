import 'package:flutter/material.dart';
import 'package:user_dashboard/models/transaction_model.dart';

import '../../utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  TransactionHistory({
    super.key,
  });
  List<TransactionModel> items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        price: r'$20,129',
        date: '13 Apr, 2022 ',
        isWrapper: true),
    TransactionModel(
        title: 'Cash Withdrawal',
        price: r'$20,129',
        date: '13 Apr, 2022 ',
        isWrapper: false),
    TransactionModel(
        title: 'Cash Withdrawal',
        price: r'$20,129',
        date: '13 Apr, 2022 ',
        isWrapper: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHeader(),
        SizedBox(
          height: 15,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Color(0xFFAAAAAA)),
        ),
        SizedBox(
          height: 8,
        ),
        ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                TransactionItem(model: items[index]))
      ],
    );
  }
}

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Spacer(),
        TextButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: Color(0xFF4EB7F2)),
            ))
      ],
    );
  }
}

class TransactionItem extends StatelessWidget {
  TransactionItem({super.key, required this.model});
  TransactionModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      child: ListTile(
        title: Text(
          model.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          model.date,
          style:
              AppStyles.regular16(context).copyWith(color: Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          model.price,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: model.isWrapper ? Color(0xFFF3735E) : Color(0xFF7DD97B)),
        ),
      ),
    );
  }
}
