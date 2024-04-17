import 'package:flutter/material.dart';
import 'package:hubtel/theme/custom_color.dart';
import 'package:intl/intl.dart';

class TransactionDateTile extends StatelessWidget {
  final DateTime date;

  const TransactionDateTile({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: CustomColor.primaryColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Text(
          DateFormat('MMMM dd y').format(date),
          style: const TextStyle(
            color: CustomColor.greyColor,
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
