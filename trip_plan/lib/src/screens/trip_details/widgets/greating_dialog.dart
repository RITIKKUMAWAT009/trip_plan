
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class GreatingDialog extends StatelessWidget {
  const GreatingDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GiffyDialog.lottie(
        Lottie.asset("assets/animation/Greeting.json"),
        title: Text(
          'Great!',
          style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20
          ),
          textAlign: TextAlign.center,
        ),
        content: Text(
          'Your itinrary has been saved',
          textAlign: TextAlign.center,
        ),
        actions: [
          Center(
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width/2,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[800],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),

                  )
                ),
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}