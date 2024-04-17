import 'package:flutter/material.dart';
import 'package:hubtel/models/base_transaction_tile_model_data.dart';
import 'package:hubtel/theme/custom_color.dart';

import 'transaction_amount_text.dart';
import 'transaction_description_text.dart';
import 'transaction_image.dart';
import 'transaction_name_text.dart';
import 'transaction_phone_number_text.dart';
import 'transaction_purpose.dart';
import 'transaction_status.dart';
import 'transaction_time_text.dart';

class TransactionTile extends StatelessWidget {
  final TransactionTileModelData modelData;

  const TransactionTile({super.key, required this.modelData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Ink(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: CustomColor.primaryColor)),
          child: Column(
            children: [
              TransactionTimeText(date: modelData.createdAt),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TransactionImage(image: modelData.image),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TransactionNameText(name: modelData.name),
                            const SizedBox(width: 10),
                            TransactionStatus(status: modelData.status),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            TransactionPhoneNumberText(phoneNumber: modelData.phoneNumber),
                            const SizedBox(width: 10),
                            TransactionAmountText(amount: modelData.amount),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Divider(color: CustomColor.primaryColor, height: 16, thickness: 1),
              Row(
                children: [
                  TransactionPurpose(purpose: modelData.purpose),
                  const SizedBox(width: 8),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: CustomColor.greyColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  TransactionDescriptionText(description: modelData.description),
                  const SizedBox(width: 10),
                  modelData.favorite
                      ? const Icon(
                          Icons.star_rounded,
                          color: CustomColor.yellowColor,
                          size: 15,
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
