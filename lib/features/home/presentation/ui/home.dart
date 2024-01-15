import 'package:flutter/material.dart';

import '../widget/column.dart';
import '../widget/container_center.dart';
import '../widget/container_end.dart';
import '../widget/container_first.dart';
import '../widget/container_first_end_row.dart';
import '../widget/custom_text_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
///  add   left border when []
///  add   left border when []index == 5
///  add   top border
///  add   bottom border
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Track your car"),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                  child: Container(
                height: 390,
                color: Colors.grey,
              )),
              Positioned(
                  left: 10,
                  top: 10,
                  bottom: 10,
                  right: 10,
                  child: Container(
                    color: Colors.white,
                    child: GridView.builder(
                        itemCount: 36,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 6),
                        itemBuilder: (context, index) {

                         // return Container(
                         //   decoration: BoxDecoration(border: i== 0 ?  Border),
                         //   margin: EdgeInsets.all(8),height: 40,width: 40,color: Colors.red,);

                          for (index; index < 1; index++)
                            return Container_first();
                          for (index + 1; index < 6; index++)
                            return Container_Center(
                              title: ["T", "", "H", "G", ""],
                              i: index - 1,
                            );
                          for (index + 6; index < 7; index++)
                            return Container_First_End_Row(
                              title: ["J"],
                              i: index - 6,
                            );
                          for (index + 7; index < 11; index++)
                            return SizedBox.shrink();
                          for (index + 11; index < 13; index++)
                            return Container_First_End_Row(
                              title: ["F", "K"],
                              i: index - 11,
                            );
                          for (index + 13; index < 14; index++)
                            return SizedBox.shrink();
                          for (index + 14; index < 15; index++)
                            return Column_Custum(
                              top: 1,
                              right: 1,
                              left: 1,
                              title1: "M",
                              title2: "O",
                              isVisible: false,
                            );
                          for (index + 15; index < 16; index++)
                            return Column_Custum(
                              top: 1,
                              left: 0.0,
                              right: 1,
                              title1: "N",
                              title2: "P",
                              isVisible: false,
                            );
                          for (index + 16; index < 17; index++)
                            return SizedBox.shrink();
                          for (index + 17; index < 19; index++)
                            return Container_First_End_Row(
                              title: ["E", "L"],
                              i: index - 17,
                            );
                          for (index + 19; index < 20; index++)
                            return SizedBox.shrink();
                          for (index + 20; index < 21; index++)
                            return Column_Custum(
                              top: 0.0,
                              left: 1,
                              right: 1,
                              title1: "Q",
                              title2: "S2",
                              isVisible: true,
                            );
                          for (index + 21; index < 22; index++)
                            return Column_Custum(
                              top: 0.0,
                              left: 0.0,
                              right: 1,
                              title1: "R",
                              title2: "T2",
                              isVisible: true,

                            );
                          for (index + 22; index < 23; index++)
                            return SizedBox.shrink();
                          for (index + 23; index < 25; index++)
                            return Container_First_End_Row(
                              title: ["D", ""],
                              i: index - 23,
                            );
                          for (index + 25; index < 29; index++)
                            return SizedBox.shrink();
                          for (index + 29; index < 31; index++)
                            return Container_First_End_Row(
                              title: ["", ""],
                              i: index - 29,
                            );
                          for (index + 31; index < 35; index++)
                            return Container_Center(
                                title: ["", "A", "B", "C"], i: index - 31);
                          for (index + 35; index < 36; index++)
                            return Container_End();
                        }),
                  ))
            ],
          ),
          CustomTextButton(
            title: "top 2.0",
            onPressed: () {},
          ),
          CustomTextButton(
            title: "bottom",
            onPressed: () {},
          ),
          CustomTextButton(
            title: "right 1.0",
            onPressed: () {},
          ),
          CustomTextButton(
            title: "left",
            onPressed: () {},
          ),
          CustomTextButton(
            title: "rotate",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
