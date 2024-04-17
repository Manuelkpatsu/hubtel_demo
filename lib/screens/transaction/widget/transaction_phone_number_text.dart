import 'package:flutter/material.dart';
import 'package:hubtel/theme/custom_color.dart';

class TransactionPhoneNumberText extends StatelessWidget {
  final String phoneNumber;

  const TransactionPhoneNumberText({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        phoneNumber,
        style: const TextStyle(color: CustomColor.phoneTextColor, fontSize: 14),
      ),
    );
  }
}
