import 'package:flutter/material.dart';

class UnoHorizontalCard extends StatefulWidget {
  final Color? CardColor;
  final gradientColor1;
  final gradientColor2;
  final bool enableGradient;
  final Image InitialImage;
  final Color? ImageBackGroundColor;
  final CardText;
  final TextStyle? CardTextStyle;
  final TextBackGroundColor;
  const UnoHorizontalCard(
      {Key? key,
      this.CardColor,
      required this.CardText,
      this.CardTextStyle,
      required this.InitialImage,
      this.TextBackGroundColor,
      this.ImageBackGroundColor,
      this.gradientColor1,
      this.gradientColor2,
      required this.enableGradient})
      : super(key: key);

  @override
  _UnoHorizontalCardState createState() => _UnoHorizontalCardState();
}

class _UnoHorizontalCardState extends State<UnoHorizontalCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
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
          color: widget.CardColor == null ? Colors.white : widget.CardColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(right: 15, left: 3, top: 5),
              width: 110,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  topRight: Radius.circular(72),
                  bottomRight: Radius.circular(2),
                ),
                gradient: widget.enableGradient
                    ? LinearGradient(
                        colors: [widget.gradientColor1, widget.gradientColor2])
                    : null,
                color: widget.ImageBackGroundColor == null &&
                        widget.enableGradient == false
                    ? Color(0xF1EDEDFF)
                    : widget.ImageBackGroundColor,
              ),
              child: widget.InitialImage,
            ),
            Container(
              padding: EdgeInsets.only(right: 5, top: 5, bottom: 5),
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: widget.TextBackGroundColor == null
                    ? Colors.white
                    : widget.TextBackGroundColor,
              ),
              child: Center(
                  child: Text(
                ' ${widget.CardText}',
                style: widget.CardTextStyle == null
                    ? TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis)
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
