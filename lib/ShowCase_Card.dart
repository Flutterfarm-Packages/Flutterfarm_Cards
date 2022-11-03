import 'package:flutter/material.dart';


class ShowCaseCard extends StatefulWidget {

  final Image InitialImage;
  final Color? ImageBackGroundColor;
  final CardText;
  final TextStyle? CardTextStyle;
  final Color? TextBackGroundColor;
  const ShowCaseCard({Key? key, required this.CardText, this.CardTextStyle, required this.InitialImage, this.ImageBackGroundColor, this.TextBackGroundColor}) : super(key: key);

  @override
  _ShowCaseCardState createState() => _ShowCaseCardState();
}

class _ShowCaseCardState extends State<ShowCaseCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Container(
            height: 130,
        child: Stack(
          children: [
             Column(
               children: [
                 SizedBox(height: 50,),
                 Container(
                   width: 170,
                   decoration: BoxDecoration(
                       color:widget.TextBackGroundColor == null ?  Color(0xff303791) : widget.TextBackGroundColor,
                       borderRadius: BorderRadius.only(topLeft: Radius.circular(102),topRight: Radius.circular(102),bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12),)
                   ),
                   child: Column(
                     children: [
                       SizedBox(height: 45,),
                       Align(
                         alignment: Alignment.bottomCenter,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text(widget.CardText,style:widget.CardTextStyle==null? TextStyle(color: Colors.white) : widget.CardTextStyle,),
                           )),
                     ],
                   ),
                 ),
               ],
             ),
            Positioned(
              top: 0,bottom: 35,left: 20,right: 20,
              child: Container(
                width: 90,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color:widget.ImageBackGroundColor==null? Color(0xffebf1f6) : widget.ImageBackGroundColor,
                    shape: BoxShape.circle
                ),
                child: widget.InitialImage,
              ),
            ),
          ],
        ),
      )
    );
  }
}
