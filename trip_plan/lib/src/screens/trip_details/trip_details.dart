import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trip_plan/src/controller/trip_controller/trip_controller.dart';
import 'package:trip_plan/src/models/trip_model/trip_model.dart';
import 'package:trip_plan/src/screens/review/reviews_screen.dart';
import 'package:trip_plan/src/screens/trip_details/widgets/greating_dialog.dart';

import '../../controller/my_trip_controller/my_trip_controller.dart';
import '../my_trip/my_trips.dart';

class TripDetails extends StatelessWidget {
  const TripDetails(
      {super.key, required this.trip,
       required this.cityName,
      });

   final String cityName;

 final TripModel trip;

  @override
  Widget build(BuildContext context) {
    final tripController= Get.put(MyTripController());
    return Scaffold(
      body: SingleChildScrollView(
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Positioned.fill(
                      bottom: MediaQuery.of(context).size.height * 0.0,
                      child: Image.network(
                      trip.imageUrl,
                        fit: BoxFit.cover,
                      )),
                  Positioned(
                      left: 10,
                      top: MediaQuery.of(context).size.height / 10,
                      right: 10,
                      child: Column(
                        children: [
                         Text(
                          cityName,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [BoxShadow(color: Colors.black,blurRadius: 7.4,spreadRadius: 7.4)],
                                fontSize: 30),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Iconsax.location,
                                shadows: [BoxShadow(color: Colors.black,blurRadius: 2.4,spreadRadius: 2.4)],
                                color: Colors.white,
                              ),
                              Text(
                                " 210KM",
                                style: TextStyle(
                                    color: Colors.white,
                                    shadows: [BoxShadow(color: Colors.black,blurRadius: 7.4,spreadRadius: 7.4)],
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          RatingBar.builder(
                            initialRating: trip.ratingScore,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            ignoreGestures: true,
                            glow: true,
                            itemSize: 23,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      )),
                  Positioned.fill(
                    child: DraggableScrollableSheet(
                        expand: true,
                        maxChildSize: 0.9,
                        minChildSize: 0.2,
                        snap: true,
                        builder: (_, controller) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.4), // Yellow shadow with opacity
                                  spreadRadius: 10, // Spread radius
                                  blurRadius: 7, // Blur radius
                                  offset: Offset(0, 1), // Offset in x and y direction
                                ),
                              ],
                            ),
                            child: Material(

                              elevation: 5,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  topLeft: Radius.circular(25)),
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Container(
                                        color: Colors.grey,
                                        height: 4,
                                        width: 30,
                                      ),
                                    ),
                                    const Center(
                                      child: Text(
                                        "Details",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                          controller: controller,
                                          itemCount: 1,
                                          itemBuilder: (context, index) {
                                            return Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                 trip.description,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16),
                                                ),
                                                const SizedBox(
                                                  height: 25,
                                                ),
                                                const ListTile(
                                                  leading: CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.red,
                                                    child: Image(
                                                        image: AssetImage(
                                                            "assets/images/money1.jpeg")),
                                                  ),
                                                  title: Text(
                                                    "Cost",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500),
                                                  ),
                                                  subtitle: Text(
                                                    "\$21-\$40",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                  trailing: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Icon(
                                                        Icons.verified_user_rounded,
                                                        color: Colors.greenAccent,
                                                      ),
                                                      Text(
                                                        "Verified",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.greenAccent,
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "It isn't very expensive to get there from the major\ncity of Sukabumi or Bogor.",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                const Divider(
                                                  height: 20,
                                                ),
                                                const ListTile(
                                                  leading: CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.red,
                                                    child: Image(
                                                        image: AssetImage(
                                                            "assets/images/timecalendar.jpeg")),
                                                  ),
                                                  title: Text(
                                                    "Time",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500),
                                                  ),
                                                  subtitle: Text(
                                                    "All Day",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                  trailing: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Icon(
                                                        Icons.verified_user_rounded,
                                                        color: Colors.greenAccent,
                                                      ),
                                                      Text(
                                                        "Verified",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.greenAccent,
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Spend all day in this curug for maximum impact.",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                const Divider(
                                                  height: 20,
                                                ),
                                                const ListTile(
                                                  leading: CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.red,
                                                    child: Image(
                                                        image: AssetImage(
                                                            "assets/images/road1.jpeg")),
                                                  ),
                                                  title: Text(
                                                    "Road",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500),
                                                  ),
                                                  subtitle: Text(
                                                    "Very Good",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                  trailing: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Icon(
                                                        Icons.verified_user_rounded,
                                                        color: Colors.greenAccent,
                                                      ),
                                                      Text(
                                                        "Verified",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.greenAccent,
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Only the last leg is walking over the creek.",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius.circular(30),
                                                          color: Colors.red),
                                                      height: 200,
                                                      width: MediaQuery.of(context)
                                                          .size
                                                          .width,
                                                      clipBehavior: Clip.antiAlias,
                                                      child: const Image(
                                                        image: AssetImage(
                                                          "assets/images/map.jpeg",
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    const Divider(),
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        const Text(
                                                          "Reviews(199)",
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        ),
                                                        IconButton(
                                                            onPressed: () {
                                                              Get.to(() =>
                                                              const ReviewsScreen());
                                                            },
                                                            icon: const Icon(Icons
                                                                .arrow_forward_ios))
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    SizedBox(
                                                      height: 50,
                                                      width: MediaQuery.of(context)
                                                          .size
                                                          .width,
                                                      child: ElevatedButton.icon(
                                                        onPressed: () {
                                                          tripController.myTripList.add(trip);
                                                          Get.to(MyTripsScreen());
                                                        },
                                                        label: const Text(
                                                          "Add to my trip",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.white),
                                                        ),
                                                        icon: const Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                  10)),
                                                          backgroundColor:
                                                          Colors.blue[800],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            );
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  )

                ],
              ))),
    );
  }
}
