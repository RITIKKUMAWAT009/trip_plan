import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

class review_dialog extends StatelessWidget {
  const review_dialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RatingDialog(
      initialRating: 1.0,
      // your app's name?
      title: Text(
        '3 Idiots',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      // encourage your user to leave a high rating?
      message: Text(
        'Tap a star to set your rating. Add more description here if you want.',
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 15),
      ),
      // your app's logo?
      image: CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage(
          "assets/animation/trip_imagee.jpeg",
        ),
      ),
      submitButtonText: 'Submit',
      commentHint: 'Set your custom comment hint',
      onCancelled: () => print('cancelled'),
      onSubmitted: (response) {
        print('rating: ${response.rating}, comment: ${response.comment}');
        // if (response.rating < 3.0) {
        //   // send their comments to your email or anywhere you wish
        //   // ask the user to contact you instead of leaving a bad review
        // } else {
        //   //_rateAndReviewApp();
        // }
      },
    );
  }
}
