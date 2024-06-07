import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trip_plan/src/screens/home/destination_datail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Positioned.fill(
                      bottom: MediaQuery.of(context).size.height * 0.3,
                      child: Image.asset(
                        "assets/animation/trip_imagee.jpeg",
                        fit: BoxFit.cover,
                      )),
                  const Positioned(
                    top: 50,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        "Welcome Back",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    left: 10,
                    top: 350,
                    right: 10,
                    child: TextFormField(
                      enabled: true,
                      decoration: InputDecoration(
                        focusColor: Colors.red,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Search destinations...",
                        prefixIcon: Icon(Icons.search),
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Positioned.fill(
                      child: DraggableScrollableSheet(
                          maxChildSize: 0.8,
                          minChildSize: 0.4,
                          snap: true,
                          builder: (_, controller) {
                            return Material(
                              elevation: 5,
                              // ignore: prefer_const_constructors
                              borderRadius: BorderRadius.only(
                                topRight: const Radius.circular(25),
                              ),
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
                                    )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Top destinations nearby",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                          // physics: NeverScrollableScrollPhysics(),
                                          controller: controller,
                                          itemCount: 20,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () => Get.to(() =>
                                                  const DestinationDetails()),
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
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(20) // Adjust the radius as needed
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
                            );
                          }))
                ],
              ))),
    );
  }
}
