import 'package:flutter/material.dart';
import 'package:hubtel/models/transaction.dart';

class TransactionTypeButton extends StatelessWidget {
  final TransactionType transactionType;
  final VoidCallback? onPressed;
  final Color textColor;
  final Color backgroundColor;
  final FontWeight fontWeight;

  const TransactionTypeButton({
    Key? key,
    required this.transactionType,
    required this.onPressed,
    required this.textColor,
    required this.backgroundColor,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 35,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: textColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            textStyle: TextStyle(fontWeight: fontWeight, fontSize: 14),
            elevation: 0,
          ),
          child: Text(transactionType.label),
        ),
      ),
    );
  }
}
