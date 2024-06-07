// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:trip_plan/src/controller/my_trip_controller/my_trip_controller.dart';
//
// class MyTripsScreen extends StatelessWidget {
//   const MyTripsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final controller=Get.put(MyTripController());
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Your Trips'),
//         automaticallyImplyLeading: true,
//         // backgroundColor: Colors.white,
//         backgroundColor: Colors.blue[800],
//         foregroundColor: Colors.white,
//         centerTitle: true,
//         titleTextStyle:
//             const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(80),
//           child: Obx(
//             ()=> Container(
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//               height: 65,
//               child: Row(
//                 children: [
//                   Expanded(
//                       child: SizedBox(
//                     height: 57,
//                     child: ElevatedButton.icon(
//                         icon: const Icon(Icons.umbrella),
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.yellow,
//                             foregroundColor: Colors.black,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10))),
//                         onPressed: () {
//                           controller.isItinerarySelected.value=true;
//                         },
//                         label: const Text('Literary')),
//                   )),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                       child: SizedBox(
//                     height: 57,
//                     child: ElevatedButton.icon(
//                         icon: const Icon(Icons.favorite_border),
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.black,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10))),
//                         onPressed: () {},
//                         label: const Text('Wishlist')),
//                   )),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: const ItineraryScreen(),
//       floatingActionButton:   Padding(
//         padding: const EdgeInsets.only(right: 15.0,left: 50),
//         child: DottedBorder(
//           color: Colors.blue.shade300,
//           padding: EdgeInsets.zero,
//           radius: const Radius.circular(10),borderType:BorderType.RRect,strokeWidth: 4,
//           child: Container(
//             height: 50,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//             child: ElevatedButton.icon(
//               onPressed: () {},
//               icon: const Icon(Icons.add),
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue[800],
//                   foregroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),)),
//               label: const Text('Create an Itinearay'),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ItineraryScreen extends StatelessWidget {
//   const ItineraryScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//       SizedBox(
//         height: MediaQuery.of(context).size.height,
//         child: ListView.builder(itemCount: 1,itemBuilder: (context, index) {
//           return Column(
//             children: [
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 height: MediaQuery.of(context).size.height / 4,
//                 width: MediaQuery.of(context).size.width - 20,
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//                 clipBehavior: Clip.antiAlias,
//                 child: Image.asset(
//                     fit: BoxFit.fitWidth, 'assets/animation/trip_imagee.jpeg'),
//               ),
//               const Text(
//                 'Fun Trip!',
//                 style: TextStyle(
//                     color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     '20 Aug 2025',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                         color: Colors.black54),
//                   ),
//                   Text(' | ',
//                       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//                   Text('1 destination',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           color: Colors.black54)),
//                 ],
//               ),
//               const Divider(
//                 height: 50,
//               ),
//             ],
//           );
//         },),
//       ),
//         ],
//       ),
//     );
//   }
// }

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_plan/src/controller/my_trip_controller/my_trip_controller.dart';
import 'package:trip_plan/src/screens/wishlist/wishlist_screen.dart';

class MyTripsScreen extends StatelessWidget {
  const MyTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyTripController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Trips'),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Obx(
                () => Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              height: 65,
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 57,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.umbrella),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: controller.isItinerarySelected.value
                              ? Colors.yellow
                              : Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          controller.isItinerarySelected.value=true;
                          controller.isWishlistSelected.value=false;

                        },
                        label: const Text('Itinerary'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 57,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.favorite_border),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: controller.isWishlistSelected.value
                              ? Colors.yellow
                              : Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          controller.isWishlistSelected.value=true;
                          controller.isItinerarySelected.value=false;

                        },
                        label: const Text('Wishlist'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Obx(() {
        return controller.isItinerarySelected.value
            ? const ItineraryScreen()
            : const WishListScreen();
      }),

    );
  }
}

class ItineraryScreen extends StatelessWidget {
  const ItineraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width - 20,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          fit: BoxFit.fitWidth, 'assets/animation/trip_imagee.jpeg',
                        ),
                      ),
                      const Text(
                        'Fun Trip!',
                        style: TextStyle(
                            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '20 Aug 2025',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black54),
                          ),
                          Text(' | ',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          Text('1 destination',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black54)),
                        ],
                      ),
                      const Divider(
                        height: 50,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 50),
        child: DottedBorder(
          color: Colors.blue.shade300,
          padding: EdgeInsets.zero,
          radius: const Radius.circular(10),
          borderType: BorderType.RRect,
          strokeWidth: 4,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[800],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              label: const Text('Create an Itinerary'),
            ),
          ),
        ),
      ),
    );
  }
}


