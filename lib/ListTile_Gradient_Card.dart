import 'package:flutter/material.dart';


class ListTile_Gradient_Card extends StatefulWidget {
  final   gradientColor1;
  final    gradientColor2;
  final bool enableGradient;
  final Image InitialImage;
  final double? CardWidth;
  final CardTitle;
  final CardSubTitle;
  final Widget? TrailingWidget;
  final TextStyle? CardTitleTextStyle;
  final TextStyle? CardSubTitleTextStyle;

  const ListTile_Gradient_Card({Key? key,    this.CardTitleTextStyle, required this.InitialImage,  required this.enableGradient, this.CardTitle, this.CardSubTitle,   this.TrailingWidget, this.CardSubTitleTextStyle, this.CardWidth, this.gradientColor1, this.gradientColor2,}) : super(key: key);

  @override
  _ListTile_Gradient_CardState createState() => _ListTile_Gradient_CardState();
}

class _ListTile_Gradient_CardState extends State<ListTile_Gradient_Card> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:Container(
          padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient:widget.enableGradient ? LinearGradient(
                colors: [widget.gradientColor1,widget.gradientColor2] ,begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.2, 0.7],
            ): null,
          ),
          width:widget.CardWidth==null? MediaQuery.of(context).size.width*0.90 : widget.CardWidth,
          child: Center(
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              leading: widget.InitialImage,
              contentPadding: EdgeInsets.all( 10),
              title: Text('${widget.CardTitle}',style: widget.CardTitleTextStyle == null ?  TextStyle(fontWeight: FontWeight.w600,fontSize: 15,overflow: TextOverflow.ellipsis): widget.CardTitleTextStyle, maxLines: 4,),
              subtitle: Text('${widget.CardSubTitle}',style: widget.CardSubTitleTextStyle == null ?  TextStyle(fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis): widget.CardSubTitleTextStyle, ),
              trailing: widget.TrailingWidget==null?Icon(Icons.navigate_next_outlined):widget.TrailingWidget,
            ),
          ),
        )
    );
  }
}
