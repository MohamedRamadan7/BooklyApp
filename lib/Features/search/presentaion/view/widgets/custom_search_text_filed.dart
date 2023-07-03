import 'package:flutter/material.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: bulidOutLineinputBorder(),
        focusedBorder: bulidOutLineinputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 24,
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder bulidOutLineinputBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.circular(12),
  );
}
