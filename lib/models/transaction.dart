import 'package:equatable/equatable.dart';

enum TransactionType {
  history('History'),
  summary('Transaction Summary');

  const TransactionType(this.label);

  final String label;
}

enum Status {
  success(id: 'Success'),
  failed(id: 'Failed');

  final String id;

  const Status({required this.id});
}

enum Purpose {
  personal(id: 'Personal');

  final String id;

  const Purpose({required this.id});
}

class Transaction extends Equatable {
  final int id;
  final String image;
  final String name;
  final double amount;
  final String description;
  final Status status;
  final Purpose purpose;
  final DateTime createdAt;
  final String phoneNumber;
  final bool favorite;

  const Transaction({
    required this.id,
    required this.image,
    required this.name,
    required this.amount,
    required this.description,
    required this.status,
    required this.purpose,
    required this.createdAt,
    required this.phoneNumber,
    required this.favorite,
  });

  @override
  List<Object?> get props => [
    id,
    image,
    name,
    amount,
    description,
    status,
    createdAt,
    purpose,
    phoneNumber,
    favorite,
  ];
}
