import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodmanagementsystem/utils/colors.dart';
import 'package:foodmanagementsystem/utils/dimensions.dart';
import 'package:foodmanagementsystem/widgets/big_text.dart';
import 'package:foodmanagementsystem/widgets/icon_and_text_widget.dart';
import 'package:foodmanagementsystem/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        BigText(text: text,size: Dimensions.font26),
        SizedBox(
          height: Dimensions.height10,
        ),
        SmallText(text: "With Pakistani characteristics"),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32min",
              iconColor: AppColors.iconColor2,
            ),
          ],
        )
      ],
    );
  }
}
