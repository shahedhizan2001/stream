import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container_End extends StatelessWidget {
  const Container_End({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        border: Border(
            right: BorderSide(color: Colors.black45),
            bottom: BorderSide(color: Colors.black45)),
      ),
    );  }
}
