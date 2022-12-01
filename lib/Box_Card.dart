/**************************
 Copyright: FlutterFarm
 **************************/
 
import 'package:flutter/material.dart';

class BoxCard extends StatefulWidget {
  final Color? CardColor;
  final String primaryText;
  final double? CardHeight;
  final String secondaryText;
  final gradientColor1;
  final gradientColor2;
  final bool enableGradient;
  final bool enableShadow;
  final TextStyle? primaryTextStyle;
  final TextStyle? secondaryTextStyle;

  const BoxCard({
    Key? key,
    this.CardColor,
    this.primaryTextStyle,
    required this.enableGradient,
    this.gradientColor1,
    this.gradientColor2,
    required this.primaryText,
    required this.secondaryText,
    this.secondaryTextStyle,
    required this.enableShadow,
    this.CardHeight,
  }) : super(key: key);

  @override
  _BoxCardState createState() => _BoxCardState();
}

class _BoxCardState extends State<BoxCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.CardHeight == null ? 100 : widget.CardHeight,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: widget.enableShadow == true
                ? Color(0xffd2cece)
                : Colors.transparent,
            offset: Offset(
              1.0,
              3.0,
            ),
            blurRadius: 15.0,
          ),
        ],
        gradient: widget.enableGradient
            ? LinearGradient(
                colors: [widget.gradientColor1, widget.gradientColor2])
            : null,
        color: widget.CardColor == null && widget.enableGradient == false
            ? Color(0xffffffff)
            : widget.CardColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              ' ${widget.primaryText}',
              style: widget.primaryTextStyle == null
                  ? TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      overflow: TextOverflow.ellipsis)
                  : widget.primaryTextStyle,
              textAlign: TextAlign.center,
              maxLines: 4,
            ),
            Text(
              ' ${widget.secondaryText}',
              style: widget.secondaryTextStyle == null
                  ? TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis)
                  : widget.secondaryTextStyle,
              textAlign: TextAlign.center,
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }
}
