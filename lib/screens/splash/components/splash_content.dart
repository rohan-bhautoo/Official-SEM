import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
    required this.title,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String? title, text, image, height, width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          title!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 3,
        ),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(double.parse(height!)),
          width: getProportionateScreenWidth(double.parse(width!)),
        ),
      ],
    );
  }
}
