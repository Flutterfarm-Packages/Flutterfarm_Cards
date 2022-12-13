import 'package:flutter/material.dart';

class DoorModelViewCard extends StatefulWidget {
  final Image InitialImage;
  final Color? ImageBackGroundColor;
  final CardText;
  final TextStyle? CardTextStyle;
  final Color? TextBackGroundColor;
  const DoorModelViewCard(
      {Key? key,
      required this.CardText,
      this.CardTextStyle,
      required this.InitialImage,
      this.ImageBackGroundColor,
      this.TextBackGroundColor})
      : super(key: key);

  @override
  _DoorModelViewCardState createState() => _DoorModelViewCardState();
}

class _DoorModelViewCardState extends State<DoorModelViewCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 150,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      decoration: BoxDecoration(
          color: widget.TextBackGroundColor == null
              ? Color(0xff303791)
              : widget.TextBackGroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(102),
            topRight: Radius.circular(102),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.ImageBackGroundColor == null
                      ? Color(0xFF817DAF)
                      : widget.ImageBackGroundColor),
              child: Center(
                child: widget.InitialImage,
              )),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              '${widget.CardText} ',
              textAlign: TextAlign.center,
              style: widget.CardTextStyle == null
                  ? TextStyle(color: Colors.white, fontWeight: FontWeight.w500)
                  : widget.CardTextStyle,
            ),
          )
        ],
      ),
    ));
  }
}
