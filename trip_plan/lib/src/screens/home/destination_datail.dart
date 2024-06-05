
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DestinationDetails extends StatelessWidget {
  const DestinationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  const Image(image: AssetImage('assets/images/Tripplan.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:ElevatedButton.icon(onPressed: () {}, label: const Icon(Icons.chevron_left,color: Colors.blue,),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search destination",
                    prefixIcon: Icon(Icons.search_outlined,color: Colors.blue,size: 30,),
                  ),
                ),
              ),
            ),
            Column(
              children: [
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
                            child: ElevatedButton(onPressed: () {}, child: const Text('See on the map',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),))
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Top Recommendation",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),

                        ),
                        Text("(6)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/images/curgus.jpeg",height: 100,),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text("Curug Larangan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                const Row(
                                  children: [
                                    Icon(Icons.location_pin),
                                    Text("Lojji Sukabumi",style: TextStyle(fontSize: 20),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 16,
                                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const Text("(37)",style: TextStyle(fontWeight: FontWeight.w400),)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/images/image(3).jpg",height: 90,),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text("Situgunung Bridge",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                const Row(
                                  children: [
                                    Icon(Icons.location_pin),
                                    Text("Kadudampit",style: TextStyle(fontSize: 20),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 16,
                                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const Text("(27)",style: TextStyle(fontWeight: FontWeight.w400),)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("assets/images/cisuapn.jpeg",height: 73,),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text("Curug Ciseupan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                const Row(
                                  children: [
                                    Icon(Icons.location_pin),
                                    Text("Cirangkas",style: TextStyle(fontSize: 20),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 16,
                                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const Text("(37)",style: TextStyle(fontWeight: FontWeight.w400),)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/images/javana.jpeg",height: 90,),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text("Javana Spa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                const Row(
                                  children: [
                                    Icon(Icons.location_pin),
                                    Text("Cangkuang",style: TextStyle(fontSize: 20),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 16,
                                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const Text("(15)",style: TextStyle(fontWeight: FontWeight.w400),)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/images/curgus.jpeg",height: 100,),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text("Curug Larangan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                const Row(
                                  children: [
                                    Icon(Icons.location_pin),
                                    Text("Lojji Sukabumi",style: TextStyle(fontSize: 20),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 16,
                                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const Text("(37)",style: TextStyle(fontWeight: FontWeight.w400),)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
