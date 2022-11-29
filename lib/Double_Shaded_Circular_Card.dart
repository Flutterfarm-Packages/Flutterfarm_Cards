import 'package:flutter/material.dart';

class DoubleShadedCircularCard extends StatefulWidget {
  final Image InitialImage;
  final Color? InnerColor;
  final Color? OuterColor;
  final CardText;
  final TextStyle? CardTextStyle;
  const DoubleShadedCircularCard(
      {Key? key,
      required this.CardText,
      this.CardTextStyle,
      required this.InitialImage,
      this.InnerColor,
      this.OuterColor})
      : super(key: key);

  @override
  _DoubleShadedCircularCardState createState() =>
      _DoubleShadedCircularCardState();
}

class _DoubleShadedCircularCardState extends State<DoubleShadedCircularCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(5),
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.OuterColor == null
                    ? Color(0xffebf1f6)
                    : widget.OuterColor,
              ),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.InnerColor == null
                      ? Color(0xFFd4e8f6)
                      : widget.InnerColor,
                ),
                child: widget.InitialImage,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 5, top: 12, bottom: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child: Text(
                ' ${widget.CardText}',
                style: widget.CardTextStyle == null
                    ? TextStyle(
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black)
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
