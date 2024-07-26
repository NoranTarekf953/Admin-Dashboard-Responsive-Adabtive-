import 'package:flutter/material.dart';
import 'package:user_dashboard/views/widgets/custom_textForm.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
                child: CustomTextForm(
                    label: 'Customer name', hintText: 'Type Customer name')),
            SizedBox(
              width: 25,
            ),
            Expanded(
                child: CustomTextForm(
                    label: 'Customer Email', hintText: 'Type Customer email'))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
                child: CustomTextForm(
                    label: 'Item name', hintText: 'Type Item name')),
            SizedBox(
              width: 15,
            ),
            Expanded(
                child: CustomTextForm(label: 'Item mount', hintText: 'USD'))
          ],
        ),
      ],
    );
  }
}
