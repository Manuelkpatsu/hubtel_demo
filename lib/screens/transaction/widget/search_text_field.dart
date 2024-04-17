import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hubtel/theme/custom_color.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;

  const SearchTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: false,
      style: const TextStyle(color: Colors.black, fontSize: 14),
      decoration: InputDecoration(
        fillColor: CustomColor.primaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(6),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(6),
        ),
        hintText: 'Search',
        hintStyle: const TextStyle(color: CustomColor.greyColor, fontSize: 14),
        prefixIcon: const Icon(CupertinoIcons.search, size: 20, color: Colors.black),
      ),
    );
  }
}
