import 'package:flutter/material.dart';

class UnoHorizontalSingleColorCard extends StatefulWidget {
  final Color? CardColor;
  final Image InitialImage;
  final CardText;
  final TextStyle? CardTextStyle;

  const UnoHorizontalSingleColorCard({
    Key? key,
    this.CardColor,
    required this.CardText,
    this.CardTextStyle,
    required this.InitialImage,
  }) : super(key: key);

  @override
  _UnoHorizontalSingleColorCardState createState() =>
      _UnoHorizontalSingleColorCardState();
}

class _UnoHorizontalSingleColorCardState
    extends State<UnoHorizontalSingleColorCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color:
              widget.CardColor == null ? Color(0xfff0eff7) : widget.CardColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: 110,
              child: widget.InitialImage,
            ),
            Container(
              padding: EdgeInsets.only(right: 5, top: 5, bottom: 5),
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
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
