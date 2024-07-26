import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:user_dashboard/models/user_info_model.dart';
import 'package:user_dashboard/utils/app_images.dart';
import 'package:user_dashboard/utils/app_styles.dart';
import 'package:user_dashboard/views/widgets/custom_button.dart';
import 'package:user_dashboard/views/widgets/latest_transaction_list.dart';
import 'package:user_dashboard/views/widgets/quick_invoice_form.dart';
import 'package:user_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:user_dashboard/views/widgets/user_info_listTile.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(
            height: 15,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Latest Transaction',
              style: AppStyles.styleMedium16(context),
            ),
          ),
          LatestTransactionList(),
          diveder(),
          QuickInvoiceForm(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                    backgroundColor: Colors.white,
                    label: 'Add more deatils',
                    textcolor: Color(0xFF4EB7F2)),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: CustomButton(
                    backgroundColor: Color(0xFF4EB7F2),
                    label: 'Send money',
                    textcolor: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding diveder() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        height: 1,
        width: double.infinity,
        color: const Color(0xFFF1F1F1),
      ),
    );
  }
}
