import 'package:flutter/material.dart';


class DoubleColor3DCard extends StatefulWidget {
  final Color? CardColor;
  final Image InitialImage;
  final Color? ImageBackGroundColor;
  final CardText;
  final TextStyle? CardTextStyle;
  final   TextBackGroundColor;
  const DoubleColor3DCard({Key? key, this.CardColor,required this.CardText, this.CardTextStyle, required this.InitialImage, this.TextBackGroundColor, this.ImageBackGroundColor}) : super(key: key);

  @override
  _DoubleColor3DCardState createState() => _DoubleColor3DCardState();
}

class _DoubleColor3DCardState extends State<DoubleColor3DCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(8),
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
        child: Container(
          width: 140,height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),

            color:widget.TextBackGroundColor==null ? Color(0xff303791) : widget.TextBackGroundColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 110,width: 150,
                padding: EdgeInsets.only(right: 0,left: 0,top: 0),


                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft:Radius.circular(0),topRight:Radius.circular(12),bottomRight:Radius.circular(0),),
                  image:widget.ImageBackGroundColor==null? DecorationImage(
                      image: AssetImage('assets/bubble.png',),fit: BoxFit.fill
                  ):null,
                  color:widget.ImageBackGroundColor == null ? Color(0xFFf4f3f8): widget.ImageBackGroundColor,
                ),
                          child: widget.InitialImage,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(right: 5,top: 12,bottom: 5,left: 5),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                        gradient:
                            widget.TextBackGroundColor==null ?   LinearGradient(
                                colors: [Color(0xff553091),
                                  Color(0xff303791),],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [-1,21]
                            )  :   LinearGradient(
                                colors: [widget.TextBackGroundColor,widget.TextBackGroundColor,],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [-10,10]
                            ) ,
                  ),
                  child: Center(child: Text('${widget.CardText}',style:widget.CardTextStyle == null ?  TextStyle(fontWeight: FontWeight.w400,fontSize: 13, overflow: TextOverflow.ellipsis,color: Color(0xffffffff)): widget.CardTextStyle,textAlign: TextAlign.center,maxLines: 4,)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
