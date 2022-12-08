import 'package:flutter/material.dart';

class RectangularGradientCard extends StatefulWidget {
  final gradientColor1;
  final gradientColor2;
  final double? CardWidth;
  final double? CardHeight;
  final Image InitialImage;
  final CardTitle;
  final CardSubTitle;
  final TextStyle? CardTitleStyle;
  final TextStyle? CardSubTitleStyle;

  const RectangularGradientCard(
      {Key? key,
      required this.CardTitle,
      this.CardTitleStyle,
      required this.InitialImage,
      this.gradientColor1,
      this.gradientColor2,
      this.CardSubTitle,
      this.CardSubTitleStyle,
      this.CardWidth,
      this.CardHeight})
      : super(key: key);

  @override
  _RectangularGradientCardState createState() =>
      _RectangularGradientCardState();
}

class _RectangularGradientCardState extends State<RectangularGradientCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(5),
        width: widget.CardWidth == null
            ? MediaQuery.of(context).size.width * 0.8
            : widget.CardWidth,
        height: widget.CardHeight == null ? 90 : widget.CardHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
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
          gradient: LinearGradient(
              colors: [widget.gradientColor1, widget.gradientColor2]),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.only(left: 0),
              width: 180,
              child: Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${widget.CardTitle}',
                    style: widget.CardTitleStyle == null
                        ? TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            overflow: TextOverflow.ellipsis)
                        : widget.CardTitleStyle,
                    textAlign: TextAlign.center,
                    maxLines: 4,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '${widget.CardSubTitle}',
                    style: widget.CardSubTitleStyle == null
                        ? TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 11,
                            overflow: TextOverflow.ellipsis)
                        : widget.CardSubTitleStyle,
                    textAlign: TextAlign.left,
                    maxLines: 4,
                  ),
                ],
              )),
            ),
            widget.InitialImage,
          ],
        ),
      ),
    );
  }
}
