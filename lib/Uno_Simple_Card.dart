import 'package:flutter/material.dart';


class UnoSimpleCard extends StatefulWidget {

  final Image InitialImage;
  final CardText;
  final TextStyle? CardTextStyle;
  const UnoSimpleCard({Key? key, required this.CardText, this.CardTextStyle, required this.InitialImage}) : super(key: key);

  @override
  _UnoSimpleCardState createState() => _UnoSimpleCardState();
}

class _UnoSimpleCardState extends State<UnoSimpleCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(0),
        width: 150,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage('assets/bubble.png',),fit: BoxFit.fill
          ),
          boxShadow: [
            BoxShadow(
              color:Color(0xffd2cece),
              offset:  Offset(
                1.0,
                3.0,
              ),
              blurRadius:15.0,
            ),         ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
              ),
              child: widget.InitialImage,
            ),
            Container(
              padding: EdgeInsets.only(right: 5,top: 2,bottom: 5),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),

              ),
              child: Center(child: Text(' ${widget.CardText}',style:widget.CardTextStyle == null ?  TextStyle(fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis,color: Colors.black): widget.CardTextStyle,textAlign: TextAlign.center,maxLines: 4,)),
            ),
          ],
        ),
      ),
    );
  }
}
