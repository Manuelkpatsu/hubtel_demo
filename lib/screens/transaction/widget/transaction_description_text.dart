import 'package:flutter/material.dart';

class TransactionDescriptionText extends StatelessWidget {
  final String description;

  const TransactionDescriptionText({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        description,
        style: const TextStyle(color: Colors.black, fontSize: 12),
      ),
    );
  }
}
