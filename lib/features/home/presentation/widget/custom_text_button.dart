import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      style: TextButton.styleFrom(
        fixedSize: Size.fromHeight(0)
      ),
        onPressed:onPressed, child: Text(title!));
  }
}
