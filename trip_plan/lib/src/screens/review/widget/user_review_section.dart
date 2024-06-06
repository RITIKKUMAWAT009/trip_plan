import 'package:animated_read_more_text/animated_read_more_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class user_review_section extends StatelessWidget {
  const user_review_section({
    super.key, required this.username, required this.date, required this.userreview,
  });
  final String username;
  final String date;
  final String  userreview;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Icon(
              Icons.person,
              size: 45,
              color: Colors.grey,
            ),
            radius: 25,
          ),
          title: Text(
            username,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(date,
          style: TextStyle(fontWeight: FontWeight.w500,fontSize:13 ),
          ),
          trailing: RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 23,
            itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.blue,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ),
        Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: AnimatedReadMoreText(
                userreview,
                maxLines: 3,
                readMoreText: 'Show more',
                readLessText: 'Show less',
                textStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                buttonTextStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300]),
            margin: EdgeInsets.symmetric(horizontal: 15)),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
