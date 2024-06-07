import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
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
      }
    );
  }
}
