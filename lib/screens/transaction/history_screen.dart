import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hubtel/models/base_transaction_tile_model_data.dart';
import 'package:hubtel/models/transaction.dart';

import 'widget/transaction_date_tile.dart';
import 'widget/transaction_tile.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<Transaction> transactions = [
    Transaction(
      id: 1,
      image: 'assets/mtn.png',
      name: 'Emmanuel Rockson Kwabena Uncle Ebo',
      amount: 500,
      status: Status.success,
      createdAt: DateTime(2022, 5, 24, 14, 45, 10),
      purpose: Purpose.personal,
      description: 'Cool your heart wai',
      phoneNumber: '024 123 4567',
      favorite: true,
    ),
    Transaction(
      id: 2,
      image: 'assets/absa.png',
      name: 'Absa Bank',
      amount: 500,
      status: Status.failed,
      createdAt: DateTime(2022, 5, 24, 14, 30, 10),
      purpose: Purpose.personal,
      description: 'Cool your heart wai',
      phoneNumber: '024 123 4567',
      favorite: false,
    ),
    Transaction(
      id: 3,
      image: 'assets/mtn.png',
      name: 'Emmanuel Rockson Kwabena Uncle Ebo',
      amount: 500.00,
      status: Status.success,
      createdAt: DateTime(2022, 5, 23, 14, 30, 10),
      purpose: Purpose.personal,
      description: 'Cool your heart wai',
      phoneNumber: '024 123 4567',
      favorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final groupedTransactions = groupBy(
      transactions,
      (Transaction model) => DateTime(
        model.createdAt.year,
        model.createdAt.month,
        model.createdAt.day,
      ),
    );

    final baseTransactionTileModelDataList = <BaseTransactionTileModelData>[];
    for (final groupedTransactionsEntry in groupedTransactions.entries) {
      final capturedDate = groupedTransactionsEntry.key;
      final transactionDate = TransactionDateTileModelData(createdAt: capturedDate);
      baseTransactionTileModelDataList.add(transactionDate);

      final transactions = groupedTransactionsEntry.value;
      final transactionTileModelDataList = transactions
          .map((transaction) => TransactionTileModelData(
                id: transaction.id,
                name: transaction.name,
                image: transaction.image,
                status: transaction.status,
                purpose: transaction.purpose,
                description: transaction.description,
                createdAt: transaction.createdAt,
                amount: transaction.amount,
                favorite: transaction.favorite,
                phoneNumber: transaction.phoneNumber,
              ))
          .toList();

      baseTransactionTileModelDataList.addAll(transactionTileModelDataList);
    }

    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: baseTransactionTileModelDataList.length,
        itemBuilder: (ctx, int index) {
          final modelData = baseTransactionTileModelDataList[index];

          if (modelData is TransactionDateTileModelData) {
            return TransactionDateTile(date: modelData.createdAt);
          } else if (modelData is TransactionTileModelData) {
            return TransactionTile(modelData: modelData);
          } else {
            throw Exception('Unhandled home tile');
          }
        },
      ),
    );
  }
}
