import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hubtel/models/transaction.dart';

@immutable
class BaseTransactionTileModelData extends Equatable {
  final DateTime createdAt;

  BaseTransactionTileModelData({DateTime? dateTime}) : createdAt = dateTime ?? DateTime.now();

  @override
  List<Object?> get props => [createdAt];
}

@immutable
class TransactionDateTileModelData extends BaseTransactionTileModelData {
  TransactionDateTileModelData({DateTime? createdAt}) : super(dateTime: createdAt);
}

@immutable
class TransactionTileModelData extends BaseTransactionTileModelData {
  final int id;
  final String image;
  final String name;
  final double amount;
  final String description;
  final Status status;
  final Purpose purpose;
  final String phoneNumber;
  final bool favorite;

  TransactionTileModelData({
    this.id = 0,
    this.name = '',
    this.image = '',
    this.status = Status.success,
    this.description = '',
    this.amount = 0.0,
    this.purpose = Purpose.personal,
    this.phoneNumber = '',
    this.favorite = false,
    DateTime? createdAt,
  }) : super(dateTime: createdAt);

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        id,
        name,
        image,
        amount,
        description,
        phoneNumber,
        favorite,
        status,
        purpose,
      ]);
  }
}
