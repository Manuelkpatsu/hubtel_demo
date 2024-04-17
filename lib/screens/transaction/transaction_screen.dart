import 'package:flutter/material.dart';
import 'package:hubtel/models/transaction.dart';
import 'package:hubtel/theme/custom_color.dart';

import 'history_screen.dart';
import 'transaction_summary_screen.dart';
import 'widget/search_text_field.dart';
import 'widget/transaction_type_switch.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final TextEditingController controller = TextEditingController();
  TransactionType transactionType = TransactionType.history;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            TransactionTypeSwitch(transactionType: transactionType),
            const SizedBox(height: 20),
            const Divider(height: 0, thickness: 1, color: CustomColor.primaryColor),
            const SizedBox(height: 17),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(child: SearchTextField(controller: controller)),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu, color: Colors.black, size: 30),
                    splashRadius: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            transactionType == TransactionType.history
                ? const HistoryScreen()
                : const TransactionSummaryScreen(),
          ],
        ),
      ),
      floatingActionButton: IntrinsicWidth(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add_circle, size: 32),
          label: Text(
            'Send new'.toUpperCase(),
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
