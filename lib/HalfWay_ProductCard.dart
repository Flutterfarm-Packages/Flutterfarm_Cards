import 'package:flutter/material.dart';

class HalfWayProductCard extends StatelessWidget {
  final Color cardColor;
  final double? cardWidth;
  final Image productImage;
  final List productDetails;
  final Widget button;
  const HalfWayProductCard(
      {Key? key,
      required this.cardColor,
      required this.productImage,
      required this.productDetails,
      required this.button,
      this.cardWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth == null
          ? MediaQuery.of(context).size.width * 0.6
          : cardWidth,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x9f4c4b4b),
            offset: Offset(
              1.0,
              3.0,
            ),
            blurRadius: 15.0,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
            colors: [Color(0xffffffff), cardColor],
            stops: [0.45, 0.54],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          productImage,
          SizedBox(
            height: 10,
          ),
          for (int i = 0; i < productDetails.length; i++) productDetails[i],
          SizedBox(
            height: 25,
          ),
          button,
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
