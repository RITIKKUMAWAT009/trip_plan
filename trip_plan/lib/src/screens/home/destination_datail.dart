import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../trip_details/trip_details.dart';

class DestinationDetails extends StatelessWidget {
  const DestinationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25,),
              // Container(
              //
              //   child: Stack(
              //     children: [
              //       const Image(
              //         image: AssetImage('assets/images/Tripplan.jpg'),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: IconButton(
              //           onPressed: () {},
              //           icon: Icon(Icons.chevron_left_outlined),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 15),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search destination",
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[300],
                      ),
                      height: 100,
                      width: 400,
                      child: Center(
                          child: ElevatedButton(
                              onPressed: () {
                              },
                              child: const Text(
                                'See on the map',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ))),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Top Recommendation",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Text(
                    "(6)",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 25),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                    // controller: controller,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        // onTap: () => Get.to(() =>
                        // const TripDetails()),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                              children: [
                                Container(
                                  width: 150,
                                  height: 120,
                                  clipBehavior:
                                  Clip.antiAlias,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius
                                          .circular(
                                          20) // Adjust the radius as needed
                                  ),
                                  child: Image.asset(
                                    'assets/animation/trip_imagee.jpeg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  children: [
                                    const Text(
                                      "Shimla Manali Tour",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight:
                                          FontWeight
                                              .bold),
                                    ),
                                    const Row(
                                      children: [
                                        Icon(
                                          Iconsax
                                              .location,
                                          size: 19,
                                          color:
                                          Colors.grey,
                                        ),
                                        Text(
                                          " Manali",
                                          style: TextStyle(
                                              fontWeight:
                                              FontWeight
                                                  .w700,
                                              fontSize:
                                              15,
                                              color: Colors
                                                  .grey),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          initialRating:
                                          3,
                                          minRating: 1,
                                          direction: Axis
                                              .horizontal,
                                          allowHalfRating:
                                          true,
                                          itemCount: 5,
                                          itemSize: 23,
                                          itemPadding:
                                          const EdgeInsets
                                              .symmetric(
                                              horizontal:
                                              1.0),
                                          itemBuilder:
                                              (context,
                                              _) =>
                                          const Icon(
                                            Icons.star,
                                            color: Colors
                                                .amber,
                                          ),
                                          onRatingUpdate:
                                              (rating) {
                                            print(rating);
                                          },
                                        ),
                                        const Text(
                                          " (29)",
                                          style: TextStyle(
                                              fontWeight:
                                              FontWeight
                                                  .bold,
                                              fontSize:
                                              15),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Divider(),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
