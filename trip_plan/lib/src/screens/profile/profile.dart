import 'package:flutter/material.dart';
import 'package:trip_plan/src/common/widgets/custom_shape_container.dart';
import 'package:trip_plan/src/common/widgets/heading_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Profile'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.black,
                  size: 30,
                )),
          )
        ],
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgesWidget(
              child: Container(
                padding:
                    const EdgeInsets.only(bottom: 50, top: 20, left: 50, right: 50),
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/img.png'),
                ),
              ),
            ),
            const HeadingText(title: 'Name :', subTitle: 'Ritik kumawat'),
            const SizedBox(
              height: 20,
            ),
            const HeadingText(title: 'Email :', subTitle: 'Ritikkumawat@gmail.com'),
            const SizedBox(
              height: 20,
            ),
            const HeadingText(title: 'Username :', subTitle: 'rkkumawat'),
            const SizedBox(
              height: 20,
            ),
            const HeadingText(title: 'Contact :', subTitle: '1234590934'),
            const SizedBox(
              height: 20,
            ),
            const HeadingText(title: 'Address :', subTitle: 'Mohali Punjab'),
            const SizedBox(
              height: 20,
            ),
            const HeadingText(title: 'UID :', subTitle: '12345'),
            const SizedBox(height:50),
            SizedBox(
              width: MediaQuery.of(context).size.width-30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text('Logout'),
              ),
            )  ,
            SizedBox(height: 20,),
            SizedBox(
              width: MediaQuery.of(context).size.width-30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade800,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text('Delete Account'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

