import 'package:flutter/material.dart';

class VerticalReverseCard extends StatefulWidget {
  final Image InitialImage;
  final Color? ImageBackGroundColor;
  final CardText;
  final TextStyle? CardTextStyle;
  final TextBackGroundColor;
  const VerticalReverseCard(
      {Key? key,
      required this.CardText,
      this.CardTextStyle,
      required this.InitialImage,
      this.TextBackGroundColor,
      this.ImageBackGroundColor})
      : super(key: key);

  @override
  _VerticalReverseCardState createState() => _VerticalReverseCardState();
}

class _VerticalReverseCardState extends State<VerticalReverseCard> {
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
              ? Color(0xff303791)
              : widget.TextBackGroundColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 120,
              width: 150,
              padding: EdgeInsets.only(right: 0, left: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(15),
                ),
                image: widget.ImageBackGroundColor == null
                    ? DecorationImage(
                        image: AssetImage(
                          'assets/bubble.png',
                        ),
                        fit: BoxFit.fill)
                    : null,
                color: widget.ImageBackGroundColor == null
                    ? Color(0xFFFFFFFF)
                    : widget.ImageBackGroundColor,
              ),
              child: widget.InitialImage,
            ),
            Container(
              padding: EdgeInsets.only(right: 5, top: 12, bottom: 5, left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: widget.TextBackGroundColor == null
                    ? Color(0xff303791)
                    : widget.TextBackGroundColor,
              ),
              child: Center(
                  child: Text(
                '${widget.CardText}',
                style: widget.CardTextStyle == null
                    ? TextStyle(
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                        color: Color(0xffffffff))
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
