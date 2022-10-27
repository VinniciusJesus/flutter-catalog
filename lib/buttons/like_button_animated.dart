import 'package:flutter/material.dart';

class LikeButtonAnimated extends StatefulWidget {
  const LikeButtonAnimated(
      {Key? key, required this.onPressed, this.color = Colors.black})
      : super(key: key);
  final Function onPressed;
  final Color color;
  @override
  _LikeButtonAnimatedState createState() => _LikeButtonAnimatedState();
}

class _LikeButtonAnimatedState extends State<LikeButtonAnimated> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
      icon: Icon(isLiked ? Icons.thumb_up_alt : Icons.thumb_up_alt_outlined,
          color: widget.color),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
        widget.onPressed();
      },
    ));
  }
}
