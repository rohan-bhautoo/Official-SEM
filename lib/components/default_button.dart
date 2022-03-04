import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.isLoading,
  }) : super(key: key);

  final String text;
  final void Function() onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(60),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onPressed,
        child: isLoading == true
            ? SizedBox(
                width: getProportionateScreenWidth(30),
                height: getProportionateScreenHeight(30),
                child: const CircularProgressIndicator(
                  color: Colors.white,
                  backgroundColor: kPrimaryColor,
                  strokeWidth: 3,
                ),
              )
            : Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(18),
                ),
              ),
      ),
    );
  }
}
