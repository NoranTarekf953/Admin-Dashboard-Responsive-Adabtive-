import 'package:flutter/material.dart';
import 'package:user_dashboard/models/income_item_model.dart';

import '../utils/app_styles.dart';
import 'income_chart.dart';
import 'income_header.dart';

class IncomeSection extends StatelessWidget {
  IncomeSection({
    super.key,
  });
  List<IncomeItemModel> items = [
    IncomeItemModel(
        color: Color(0xFF208CC8), title: 'Design service', percentage: '40%'),
    IncomeItemModel(
        color: Color(0xFF4EB7F2), title: 'Design product', percentage: '25%'),
    IncomeItemModel(
        color: Color(0xFF064061), title: 'Product royalti', percentage: '20%'),
    IncomeItemModel(
        color: Color(0xFFE2DECD), title: 'Other', percentage: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          IncomeHeader(),
          Row(
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(
                width: 15,
              ),
              Expanded(
                flex: 2,
                child: Column(
                    children: items
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: IncomeItemDetail(model: e),
                            ))
                        .toList()),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class IncomeItemDetail extends StatelessWidget {
  IncomeItemDetail({super.key, required this.model});
  IncomeItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: CircleAvatar(
        radius: 5,
        backgroundColor: model.color,
      ),
      title: Text(
        model.title,
        style: AppStyles.regular16(context),
      ),
      trailing: Text(
        model.percentage,
        style:
            AppStyles.styleMedium16(context).copyWith(color: Color(0xFF208CC8)),
      ),
    );
  }
}
