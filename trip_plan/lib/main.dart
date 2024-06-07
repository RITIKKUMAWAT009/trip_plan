import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:trip_plan/src/screens/trip_details/trip_details.dart';
import 'package:trip_plan/src/screens/onboarding/onboarding_screen.dart';
import 'package:trip_plan/src/screens/review/reviews_screen.dart';
import 'package:trip_plan/src/screens/my_trip/my_trips.dart';
import 'package:trip_plan/src/screens/onboarding/onboarding_screen.dart';
import 'package:trip_plan/src/screens/route_detail/route_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      //
      // ),

      home: const MyTripsScreen(),
    );
  }
}
