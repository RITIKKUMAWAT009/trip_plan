import 'package:flutter/material.dart';
import 'package:rating_summary/rating_summary.dart';
import 'package:trip_plan/src/screens/review/widget/review_dialog.dart';
import 'package:trip_plan/src/screens/review/widget/user_review_section.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        title: Text(
          "Visitor Review",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: true,
        leading: Icon(
          Icons.arrow_back,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
          child: Column(
            children: [
              RatingSummary(
                counter: 29,
                average: 4.846,
                showAverage: true,
                color: Colors.blue.shade800,
                counterFiveStars: 60,
                counterFourStars: 8,
                counterThreeStars: 6,
                counterTwoStars: 4,
                counterOneStars: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(bottom: 100),
                //  height: MediaQuery.of(context).size.height,
                //margin: EdgeInsets.only(bottom: 50),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return UserReviewSection(
                        username: 'Masoom Jaat',
                        date: '5/5/2024',
                        userreview: 'The trip was really good. I would like to thank Aruna from Country Travel Point, she was very kind and supportive throughout the trip. And also would like to thank Nageshver Tiwari from Travel Triangle who was supportive for the trip plan.',
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 10.0,
          left: 50,
          right: 15,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton.icon(
            onPressed: () {
              final _dialog = ReviewDialog();
              // show the dialog
              showDialog(
                context: context,
                barrierDismissible: true,
                // set to false if you want to force a rating
                builder: (context) => _dialog,
              );
            },
            label: Text(
              "Add Your Review",
              style: TextStyle(fontSize: 15),
            ),
            icon: Icon(Icons.add),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                backgroundColor: Colors.blue[800], foregroundColor: Colors.white),
          ),
        ),
      ),
    );
  }
}
