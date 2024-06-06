
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationDetails extends StatefulWidget {
  const LocationDetails({super.key});

  @override
  State<LocationDetails> createState() => _LocationDetailsState();
}

class _LocationDetailsState extends State<LocationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Curug Larangan"),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite),
          ),
        ],
   leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back),
   ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  const Text("Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                  const Text(" A nice curug.location just about five hundred  meters from the main road, separated by a lovely all-natural creek.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                  const SizedBox(height: 25,),
                  const ListTile(
                    leading: CircleAvatar(radius: 35,backgroundColor: Colors.red,
                      child:Image( image:AssetImage("assets/images/money1.jpeg")),
                    ),
                    title: Text("Cost",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    subtitle: Text("\$21-\$40",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.verified_user_rounded,color: Colors.greenAccent,),
                        Text("Verified",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.greenAccent,fontSize: 15),),
                      ],
                    ),
                  ),
                   const Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Text("It isn't very expensive to get there from the major\ncity of Sukabumi or Bogor.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                   ),
                  const Divider(
                    height: 20,
                  ),
                  const ListTile(
                    leading: CircleAvatar(radius: 35,backgroundColor: Colors.red,
                      child:Image( image:AssetImage("assets/images/timecalendar.jpeg")),
                    ),
                    title: Text("Time",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    subtitle: Text("All Day",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.verified_user_rounded,color: Colors.greenAccent,),
                        Text("Verified",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.greenAccent,fontSize: 15),),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Spend all day in this curug for maximum impact.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                  ),
                  const Divider(
                    height: 20,
                  ),
                  const ListTile(
                    leading: CircleAvatar(radius: 35,backgroundColor: Colors.red,
                      child:Image( image:AssetImage("assets/images/road1.jpeg")),
                    ),
                    title: Text("Road",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    subtitle: Text("Very Good",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.verified_user_rounded,color: Colors.greenAccent,),
                        Text("Verified",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.greenAccent,fontSize: 15),),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Only the last leg is walking over the creek.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red
                        ),
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        clipBehavior: Clip.antiAlias,
                        child: const Image(image: AssetImage("assets/images/map.jpeg",),fit: BoxFit.cover,),
                      ),
                        const SizedBox(
                          height: 10,
                        ),
                      const Divider(
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Reviews(199)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                        SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton.icon(onPressed: () {},
                            label: const Text("Add to my trip",style: TextStyle(fontSize:15,color: Colors.white ),),
                          icon: const Icon(Icons.add,color: Colors.white,),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Colors.blue[800],
                            ),
                          ),
                        ),
                      // SizedBox(height: 10,),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
