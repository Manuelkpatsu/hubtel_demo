import 'package:flutter/material.dart';

class TransactionImage extends StatelessWidget {
  final String image;

  const TransactionImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage(image),
    );
    return ClipOval(
      child: Image.asset(
        image,
        width: 39,
        height: 39,
        fit: BoxFit.contain,
      ),
    );
  }
}
