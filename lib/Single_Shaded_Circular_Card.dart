import 'package:flutter/material.dart';


class SingleShadedCircularCard extends StatefulWidget {

  final Image InitialImage;
  final Color? ImageBackGroundColor;

  final CardText;
  final TextStyle? CardTextStyle;
  const SingleShadedCircularCard({Key? key, required this.CardText, this.CardTextStyle, required this.InitialImage, this.ImageBackGroundColor}) : super(key: key);

  @override
  _SingleShadedCircularCardState createState() => _SingleShadedCircularCardState();
}

class _SingleShadedCircularCardState extends State<SingleShadedCircularCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(15),
        width: 150,height: 219,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color:Color(0xffd2cece),
                offset:  Offset(
                  1.0,
                  3.0,
                ),
                blurRadius:15.0,
              ),         ],
          color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:widget.ImageBackGroundColor == null ? Color(0xffebf1f6): widget.ImageBackGroundColor,
              ),
              child: widget.InitialImage,
            ),
            Container(
              padding: EdgeInsets.only(right: 5,top: 12,bottom: 12),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),

              ),
              child: Center(child: Text(' ${widget.CardText}',style:widget.CardTextStyle == null ?  TextStyle(fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis,color: Colors.black): widget.CardTextStyle,textAlign: TextAlign.center,maxLines: 3,)),
            ),
          ],
        ),
      ),
    );
  }
}
