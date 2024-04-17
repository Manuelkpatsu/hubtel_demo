import 'package:flutter/material.dart';

class TransactionNameText extends StatelessWidget {
  final String name;

  const TransactionNameText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        name,
        style: const TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }
}
