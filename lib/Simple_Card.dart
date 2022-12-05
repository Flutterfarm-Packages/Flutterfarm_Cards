/**************************
 Copyright: FlutterFarm
 **************************/
 
import 'package:flutter/material.dart';

class SimpleCard extends StatefulWidget {
  final Image InitialImage;
  final CardText;
  final TextStyle? CardTextStyle;
  final Color? CardColor;
  const SimpleCard(
      {Key? key,
      required this.CardText,
      this.CardTextStyle,
      required this.InitialImage,
      this.CardColor})
      : super(key: key);

  @override
  _SimpleCardState createState() => _SimpleCardState();
}

class _SimpleCardState extends State<SimpleCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
        width: 150,
        decoration: widget.CardColor != null
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: widget.CardColor,
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
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/bubbles.png',
                    ),
                    fit: BoxFit.fill),
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
              ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 130,
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(),
              child: widget.InitialImage,
            ),
            Container(
              padding: EdgeInsets.only(right: 5, top: 2, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child: Text(
                ' ${widget.CardText} svsd sd sd sd sds s s sc mjc  hjhcjh',
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
