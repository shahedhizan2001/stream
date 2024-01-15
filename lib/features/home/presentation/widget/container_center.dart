import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container_Center extends StatelessWidget {
  const Container_Center({super.key, required this.title, required this.i});

  final List<String> title;
  final int i;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.black45),
            right: BorderSide(color: Colors.black45),
            bottom: BorderSide(color: Colors.black45)),
      ),
      child: Center(child: Text(title[i]!)),
    );
  }
}
