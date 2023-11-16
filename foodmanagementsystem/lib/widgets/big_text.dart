import 'package:flutter/cupertino.dart';
import 'package:foodmanagementsystem/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color; // default color as hexadecimal in constructor
  final String text;
  double size;
  TextOverflow overflow;
  BigText({super.key, this.color = const Color(0xFF332d2b), required this.text,this.size = 0, this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size==0?Dimensions.font20:size,
        fontWeight: FontWeight.w400
      ),
    );
  }
}
