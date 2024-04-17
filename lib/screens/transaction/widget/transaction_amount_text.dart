import 'package:flutter/material.dart';

class TransactionAmountText extends StatelessWidget {
  final double amount;

  const TransactionAmountText({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Text(
      'GHS ${amount.round()}',
      style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
    );
  }
}
