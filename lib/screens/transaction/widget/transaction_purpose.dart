import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hubtel/models/transaction.dart';
import 'package:hubtel/theme/custom_color.dart';

class TransactionPurpose extends StatelessWidget {
  final Purpose purpose;

  const TransactionPurpose({super.key, required this.purpose});

  @override
  Widget build(BuildContext context) {
    String purposeText() {
      switch (purpose) {
        case Purpose.personal:
          return 'Personal';
      }
    }

    IconData purposeIcon() {
      switch (purpose) {
        case Purpose.personal:
          return CupertinoIcons.person_alt;
      }
    }

    return Row(
      children: [
        Container(
          width: 25,
          height: 25,
          decoration:
              const BoxDecoration(color: CustomColor.iconBackgroundColor, shape: BoxShape.circle),
          alignment: Alignment.center,
          child: Icon(purposeIcon(), color: CustomColor.iconColor, size: 12),
        ),
        const SizedBox(width: 8),
        Text(purposeText(), style: const TextStyle(color: Colors.black, fontSize: 12))
      ],
    );
  }
}
