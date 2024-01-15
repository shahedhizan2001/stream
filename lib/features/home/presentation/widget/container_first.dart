import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container_first extends StatelessWidget {
  const Container_first({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border(
            right: BorderSide(
              color: Colors.black45,
            ),
            top: BorderSide(color: Colors.black45),
            left: BorderSide(color: Colors.black45),
            bottom: BorderSide(color: Colors.black45),
        ),
      ),
    );
  }
}
