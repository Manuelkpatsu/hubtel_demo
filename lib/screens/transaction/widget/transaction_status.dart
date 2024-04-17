import 'package:flutter/material.dart';
import 'package:hubtel/models/transaction.dart';
import 'package:hubtel/theme/custom_color.dart';

class TransactionStatus extends StatelessWidget {
  final Status status;

  const TransactionStatus({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    String transactionStatusText() {
      switch (status) {
        case Status.success:
          return 'Success';
        case Status.failed:
          return 'Failed';
      }
    }

    Color transactionStatusColor() {
      switch (status) {
        case Status.success:
          return CustomColor.successColor;
        case Status.failed:
          return CustomColor.failedColor;
      }
    }

    Color transactionStatusTextColor() {
      switch (status) {
        case Status.success:
          return CustomColor.successIconColor;
        case Status.failed:
          return CustomColor.failedIconColor;
      }
    }

    IconData transactionStatusIcon() {
      switch (status) {
        case Status.success:
          return Icons.check_circle;
        case Status.failed:
          return Icons.cancel;
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: transactionStatusColor(),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        children: [
          Icon(transactionStatusIcon(), color: transactionStatusTextColor(), size: 10),
          const SizedBox(width: 4),
          Text(
            transactionStatusText(),
            style: TextStyle(
              color: transactionStatusTextColor(),
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
