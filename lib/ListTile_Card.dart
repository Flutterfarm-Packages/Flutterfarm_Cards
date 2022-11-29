import 'package:flutter/material.dart';


class ListTile_Card extends StatefulWidget {
  final Color? CardColor;
  final Image InitialImage;
  final double? CardWidth;
  final bool enableGradient;
  final bool enableShadow;
  final CardTitle;
  final CardSubTitle;
  final Widget? TrailingWidget;
  final TextStyle? CardTitleTextStyle;
  final TextStyle? CardSubTitleTextStyle;

  const ListTile_Card({Key? key, this.CardColor,  this.CardTitleTextStyle, required this.InitialImage,  required this.enableGradient, this.CardTitle, this.CardSubTitle,   this.TrailingWidget, this.CardSubTitleTextStyle, this.CardWidth, required this.enableShadow,}) : super(key: key);

  @override
  _ListTile_CardState createState() => _ListTile_CardState();
}

class _ListTile_CardState extends State<ListTile_Card> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        decoration: BoxDecoration(

        ),
        width:widget.CardWidth==null? MediaQuery.of(context).size.width*0.95 : widget.CardWidth,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Material(
              elevation:widget.enableShadow==true ? 5 : 0,
              borderRadius: BorderRadius.circular(8),
              
              child: ListTile(

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                tileColor:widget.CardColor==null? Colors.white:widget.CardColor,
                leading: widget.InitialImage,
                contentPadding: EdgeInsets.symmetric(horizontal: 19,vertical: 8),
                title: Text('${widget.CardTitle}',style: widget.CardTitleTextStyle == null ?  TextStyle(fontWeight: FontWeight.w600,fontSize: 15,overflow: TextOverflow.ellipsis): widget.CardTitleTextStyle, maxLines: 4,),
                subtitle: Text('${widget.CardSubTitle}',style: widget.CardSubTitleTextStyle == null ?  TextStyle(fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis): widget.CardSubTitleTextStyle, ),
                trailing: widget.TrailingWidget==null?Icon(Icons.navigate_next_outlined):widget.TrailingWidget,
              ),
            ),
          ),
        ),
      )
    );
  }
}
