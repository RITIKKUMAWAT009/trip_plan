import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trip_plan/dummyData/dummy_data.dart';
import 'package:trip_plan/src/controller/trip_controller/trip_controller.dart';
import 'package:trip_plan/src/screens/home/destination_datail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tripController=Get.put(TripController());
    return Scaffold(
      body: SingleChildScrollView(
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Positioned.fill(
                      bottom: MediaQuery.of(context).size.height * 0.3,
                      child: Image.asset(
                        'assets/image_trip/jaisalmerFort.png',
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
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Search destinations...",
                        prefixIcon: const Icon(Icons.search),
                        labelStyle: const TextStyle(color: Colors.black),
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
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
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
                                    Text(
                                      "Top destinations",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Expanded(
                                      child: Obx(
                                        ()=> ListView.builder(
                                            // physics: NeverScrollableScrollPhysics(),
                                            controller: controller,
                                            itemCount: tripController.tripList.length,
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
                                                          child: Image.network(
                                                            tripController.tripList[index].imageUrl,
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
                                                            // RichText(softWrap: true,overflow: TextOverflow.ellipsis,maxLines: 2,
                                                            //     text:TextSpan(style: TextStyle(overflow: TextOverflow.ellipsis),children: [TextSpan(
                                                            //   style: TextStyle(color: Colors.black,overflow: TextOverflow.ellipsis),
                                                            //   text:   tripController.tripList[index].placeName,
                                                            //
                                                            // )]) )
                                                             SizedBox(
                                                               width:MediaQuery.of(context).size.width/2,
                                                               child: Text(textDirection: TextDirection.ltr,
                                                                 tripController.tripList[index].placeName,
                                                                 overflow: TextOverflow.ellipsis,
                                                                style: Theme.of(context).textTheme.titleSmall!.apply(fontWeightDelta:3,fontSizeFactor: 1.3, ),
                                                                 maxLines: 1,
                                                                                                             ),
                                                             )
                                                           ,  Row(
                                                              children: [
                                                                const Icon(
                                                                  Iconsax
                                                                      .location,
                                                                  size: 19,
                                                                  color:
                                                                      Colors.grey,
                                                                ),
                                                                Text(
                                                                  DummyData.cityNameList[index],
                                                                  style: const TextStyle(
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
                                                                      tripController.tripList[index].ratingScore,
                                                                  ignoreGestures: true,
                                                                  minRating: 1,
                                                                  direction: Axis
                                                                      .horizontal,
                                                                  allowHalfRating:
                                                                      true,
                                                                  itemCount: 5,
                                                                  itemSize: 23,
                                                                  updateOnDrag: false,
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
                                    ),
                                    SizedBox(height: 80,),
                                    Divider()
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
