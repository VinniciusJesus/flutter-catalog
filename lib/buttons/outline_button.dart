import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const OutlineButton({required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff2749FD);

    const double borderRadius = 40;

    return OutlinedButton(
      onPressed: () {},
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "Sign Out",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w300, color: primaryColor),
        ),
        Icon(Icons.arrow_forward, color: primaryColor)
      ]),
      style: ButtonStyle(
          side: MaterialStateProperty.all(
              BorderSide(color: primaryColor, width: 1.4)),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius))))),
    );
  }
}
