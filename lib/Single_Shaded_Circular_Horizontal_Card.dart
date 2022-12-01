/**************************
 Copyright: FlutterFarm
 **************************/
 
import 'package:flutter/material.dart';

class SingleShadedCircularHorizontalCard extends StatefulWidget {
  final Image InitialImage;
  final Color? ImageBackgroundColor;
  final CardText;
  final TextStyle? CardTextStyle;
  const SingleShadedCircularHorizontalCard({
    Key? key,
    required this.CardText,
    this.ImageBackgroundColor,
    this.CardTextStyle,
    required this.InitialImage,
  }) : super(key: key);

  @override
  _SingleShadedCircularHorizontalCardState createState() =>
      _SingleShadedCircularHorizontalCardState();
}

class _SingleShadedCircularHorizontalCardState
    extends State<SingleShadedCircularHorizontalCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 7,
        ),
        height: 90,
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
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.ImageBackgroundColor == null
                    ? Color(0xffebf1f6)
                    : widget.ImageBackgroundColor,
              ),
              child: widget.InitialImage,
            ),
            Container(
              width: 150,
              padding: EdgeInsets.only(right: 5, top: 12, bottom: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child: Text(
                ' ${widget.CardText}',
                style: widget.CardTextStyle == null
                    ? TextStyle(
                        fontWeight: FontWeight.w400,
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black)
                    : widget.CardTextStyle,
                textAlign: TextAlign.center,
                maxLines: 3,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
