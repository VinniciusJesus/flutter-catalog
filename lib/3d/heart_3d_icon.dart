import 'package:flutter/material.dart';

class Heart3dIcon extends StatelessWidget {
  const Heart3dIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/3d%20icons%2Fheart-dynamic-color.png?alt=media&token=3926fa9e-bf3a-4226-9659-754c537226db",
      fit: BoxFit.cover,
    );
  }
}
