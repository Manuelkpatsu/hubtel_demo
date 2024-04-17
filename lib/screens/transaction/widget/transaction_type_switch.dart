import 'package:flutter/material.dart';
import 'package:hubtel/models/transaction.dart';
import 'package:hubtel/theme/custom_color.dart';

import 'transaction_type_button.dart';

class TransactionTypeSwitch extends StatefulWidget {
  final TransactionType transactionType;

  const TransactionTypeSwitch({super.key, required this.transactionType});

  @override
  State<TransactionTypeSwitch> createState() => _TransactionTypeSwitchState();
}

class _TransactionTypeSwitchState extends State<TransactionTypeSwitch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: CustomColor.primaryColor,
      ),
      child: Row(
        children: [
          TransactionTypeButton(
            onPressed: () {},
            transactionType: TransactionType.history,
            textColor: widget.transactionType == TransactionType.history
                ? Colors.black
                : CustomColor.greyColor,
            backgroundColor: widget.transactionType == TransactionType.history
                ? Colors.white
                : CustomColor.primaryColor,
            fontWeight: widget.transactionType == TransactionType.history
                ? FontWeight.w700
                : FontWeight.normal,
          ),
          TransactionTypeButton(
            onPressed: () {},
            transactionType: TransactionType.summary,
            textColor: widget.transactionType == TransactionType.summary
                ? Colors.black
                : CustomColor.greyColor,
            backgroundColor: widget.transactionType == TransactionType.summary
                ? Colors.white
                : CustomColor.primaryColor,
            fontWeight: widget.transactionType == TransactionType.summary
                ? FontWeight.w700
                : FontWeight.normal,
          ),
        ],
      ),
    );
  }
}
