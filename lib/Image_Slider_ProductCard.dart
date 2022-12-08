import 'package:flutter/material.dart';

class ImageSliderProductCard extends StatefulWidget {
  final double cardWidth;
  final Color cardColor;
  final Text subTitle;
  final Text title;
  final Widget? button;
  final List productImages;
  final bool? showActiveDots;
  const ImageSliderProductCard(
      {Key? key,
      required this.cardColor,
      required this.subTitle,
      required this.title,
      this.button,
      required this.productImages,
      this.showActiveDots,
      required this.cardWidth})
      : super(key: key);

  @override
  _ImageSliderProductCardState createState() => _ImageSliderProductCardState();
}

class _ImageSliderProductCardState extends State<ImageSliderProductCard> {
  late PageController pageController;

  int pageNo = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    pageNo = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.cardWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: widget.cardColor),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            widget.subTitle,
            SizedBox(
              height: 15,
            ),
            widget.title,
            SizedBox(
              height: 10,
            ),
            widget.button!,
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 180,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      pageNo = index;
                    });
                    print(index);
                  },
                  controller: pageController,
                  children: [
                    for (int i = 0; i < widget.productImages.length; i++)
                      widget.productImages[i],
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < widget.productImages.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: pageNo == i
                        ? Icon(
                            Icons.circle,
                            size: 12,
                            color: Colors.white,
                          )
                        : Icon(
                            Icons.circle_outlined,
                            size: 12,
                            color: Colors.white,
                          ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
