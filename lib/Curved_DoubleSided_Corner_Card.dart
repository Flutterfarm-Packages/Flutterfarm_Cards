import 'package:flutter/material.dart';


class CurvedDoubleSidedCornerCard extends StatefulWidget {
  final Color? CardColor;
  final Image InitialImage;
  final CardText;
  final gradientColor1;
  final gradientColor2;
  final bool enableGradient;
  final TextStyle? CardTextStyle;

  const CurvedDoubleSidedCornerCard({Key? key, this.CardColor,required this.CardText, this.CardTextStyle, required this.InitialImage, required this.enableGradient, this.gradientColor1, this.gradientColor2,}) : super(key: key);

  @override
  _CurvedDoubleSidedCornerCardState createState() => _CurvedDoubleSidedCornerCardState();
}

class _CurvedDoubleSidedCornerCardState extends State<CurvedDoubleSidedCornerCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 90,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color:Color(0xffc1c0c0),
              offset:  Offset(
                1.0,
                3.0,
              ),
              blurRadius:15,
            ),         ],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft: Radius.circular(0),topRight: Radius.circular(0),bottomRight: Radius.circular(50),),
          gradient:widget.enableGradient ? LinearGradient(
              colors: [widget.gradientColor1,widget.gradientColor2]
          ): null,

          color:widget.CardColor==null && widget.enableGradient == false ? Color(0xfff0eff7) : widget.CardColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [

            Container(


              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  shape: BoxShape.circle
              ),


              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: widget.InitialImage,
              ),
            ),

            Container(
              padding: EdgeInsets.only(right: 5,top: 5,bottom: 5),
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),

              ),
              child: Center(child: Text(' ${widget.CardText}',style:widget.CardTextStyle == null ?  TextStyle(fontWeight: FontWeight.w600,fontSize: 15,overflow: TextOverflow.ellipsis): widget.CardTextStyle,textAlign: TextAlign.center,maxLines: 4,)),
            ),
          ],
        ),
      ),
    );
  }
}
