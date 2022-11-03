import 'package:flutter/material.dart';


class DoubleShadedCircularWithBorderCard extends StatefulWidget {

  final Image InitialImage;
  final Color? InnerColor;
  final Color? OuterColor;
  final CardText;
  final Border? BorderStyle;
  final TextStyle? CardTextStyle;
  const DoubleShadedCircularWithBorderCard({Key? key, required this.CardText, this.CardTextStyle, required this.InitialImage, this.InnerColor, this.OuterColor, this.BorderStyle}) : super(key: key);

  @override
  _DoubleShadedCircularWithBorderCardState createState() => _DoubleShadedCircularWithBorderCardState();
}

class _DoubleShadedCircularWithBorderCardState extends State<DoubleShadedCircularWithBorderCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(12),
        width: 150,height: 212,
        decoration: BoxDecoration(
          border:widget.BorderStyle==null ? Border.all(width: 0.5,color: Colors.grey) : widget.BorderStyle,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(

              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:widget.OuterColor == null ? Color(0xffebf1f6): widget.OuterColor,
              ),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:widget.InnerColor == null ? Color(0xFFd4e8f6): widget.InnerColor,
                ),
                child: widget.InitialImage,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 5,top: 12,bottom: 12),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),

              ),
              child: Center(child: Text('${widget.CardText} ',style:widget.CardTextStyle == null ?  TextStyle(fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis,color: Colors.black): widget.CardTextStyle,textAlign: TextAlign.center,maxLines: 3,)),
            ),
          ],
        ),
      ),
    );
  }
}
