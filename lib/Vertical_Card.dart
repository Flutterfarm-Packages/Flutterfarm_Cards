import 'package:flutter/material.dart';

class VerticalCard extends StatefulWidget {
  final Image InitialImage;
  final Color? ImageBackGroundColor;
  final CardText;
  final TextStyle? CardTextStyle;
  final TextBackGroundColor;
  const VerticalCard(
      {Key? key,
      required this.CardText,
      this.CardTextStyle,
      required this.InitialImage,
      this.TextBackGroundColor,
      this.ImageBackGroundColor})
      : super(key: key);

  @override
  _VerticalCardState createState() => _VerticalCardState();
}

class _VerticalCardState extends State<VerticalCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0xffd2cece),
              offset: Offset(
                1.0,
                3.0,
              ),
              blurRadius: 15.0,
            ),
          ],
          color: widget.TextBackGroundColor == null
              ? Colors.white
              : widget.TextBackGroundColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 120,
              width: 150,
              padding: EdgeInsets.only(right: 3, left: 3, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(60),
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(60),
                ),
                color: widget.ImageBackGroundColor == null
                    ? Color(0xFF303791)
                    : widget.ImageBackGroundColor,
              ),
              child: widget.InitialImage,
            ),
            Container(
              padding: EdgeInsets.only(right: 5, top: 12, bottom: 12, left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: widget.TextBackGroundColor == null
                    ? Colors.white
                    : widget.TextBackGroundColor,
              ),
              child: Center(
                  child: Text(
                '${widget.CardText}',
                style: widget.CardTextStyle == null
                    ? TextStyle(
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                        color: Color(0xff303791))
                    : widget.CardTextStyle,
                textAlign: TextAlign.center,
                maxLines: 4,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
