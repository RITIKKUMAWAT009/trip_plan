
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            bottom: MediaQuery.of(context).size.height*0.3,
              child: Image.asset("assets/animation/trip_imagee.jpeg",fit: BoxFit.cover,)
          ),
          Positioned(
            left:110,
              top: 50,
              child: Text("Welcome Back",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          ),
          Positioned.fill(
            left: 10,
            top: 400,
            right: 10,
            child: TextFormField(
              decoration: InputDecoration(
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
                maxChildSize: 0.7,
                  minChildSize: 0.4,
                  builder: ( _ , controller){
                return Material(
                  elevation: 5,
                  borderRadius: BorderRadius.only(
                     topRight: Radius.circular(25),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Container(
                          color: Colors.grey,height: 4,width: 30,)),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Top destinations nearby",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Icon(Icons.arrow_forward,size: 30,)
                          ],
                        ),
                        Expanded(
                          child: ListView.builder(
                            controller: controller,
                              itemCount: 20,
                              itemBuilder: (context,index){
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 120,
                                          clipBehavior: Clip.antiAlias,
                                          decoration:  BoxDecoration(
                                              borderRadius: BorderRadius.circular(20) // Adjust the radius as needed
                                          ),
                                          child: Image.asset(
                                            'assets/animation/trip_imagee.jpeg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Shimla Manali Tour",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                            Row(
                                              children: [
                                                Icon(Iconsax.location,size: 19,color: Colors.grey,),
                                                Text(" Manali",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.grey),),
                                              ],
                                            ),
                                            SizedBox(height: 5,),
                                            Row(
                                              children: [
                                                RatingBar.builder(
                                                  initialRating: 3,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemCount: 5,
                                                  itemSize: 23,
                                                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                                  itemBuilder: (context, _) => Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  },
                                                ),
                                                Text(" (29)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                  ],
                                );
                            }
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              ),
          ),
        ],
      ),
    );
  }
}
