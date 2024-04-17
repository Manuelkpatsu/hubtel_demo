import 'package:flutter/material.dart';
import 'package:hubtel/theme/custom_color.dart';
import 'package:intl/intl.dart';

class TransactionTimeText extends StatelessWidget {
  final DateTime date;

  const TransactionTimeText({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        DateFormat('kk:mm a').format(date),
        style: const TextStyle(color: CustomColor.greyColor, fontSize: 12),
      ),
    );
  }
}
