import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Column_Custum extends StatelessWidget {
  Column_Custum({
    super.key,
    this.top,
    this.left,
    this.right,
    required this.title1,
    required this.title2, required this.isVisible,
  });

  final double? top;
  final double? left;
  final double? right;
  final String title1;
  final String title2;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border(
                  right: BorderSide(
                    color: Colors.black,
                  ),
                  top: BorderSide(color: Colors.black, width: top!),
                  left: BorderSide(color: Colors.black, width: left!),
                  bottom: BorderSide(color: Colors.black)),
            ),
            child: Center(child: Text(title1)),
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Colors.black, width: right!),
                        left: BorderSide(color: Colors.black, width: left!),
                        bottom: BorderSide(color: Colors.black)),
                  ),
                  child: Center(child: Text(title2,)),
                ),
              ),
              isVisible?Positioned(
                top: 0,
                  left: 0,
                  //width: 30,
                  //height: 25,
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                            right:
                                BorderSide(color: Colors.black, width: right!),
                            left: BorderSide(color: Colors.black, width: left!),
                            bottom: BorderSide(color: Colors.black)),
                      ),
                      child: Center(child: Text("s1")))):SizedBox.shrink()
            ],
          ),
        ),
      ],
    );
  }
}
