import 'package:flutter/material.dart';
class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key, this.textColor, required this.title, required this.subTitle,
  });
  final String title,subTitle;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width:100,child: Text(title,style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),maxLines: 1,overflow: TextOverflow.ellipsis,)),
          SizedBox(width: 20,),
          Text(subTitle,style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.black),maxLines: 1,overflow: TextOverflow.ellipsis,),
        ],
      ),
    );
  }
}
