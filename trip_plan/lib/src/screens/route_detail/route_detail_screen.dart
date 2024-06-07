import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

class RouteDetailScreen extends StatelessWidget {
  const RouteDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        flexibleSpace: Stack(
          children: [
            const Image(
              fit: BoxFit.cover,
              height: 250,
              image: AssetImage('assets/images/Tripplan.jpg'),
            ),
            Positioned(
              top: 30,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        shadows: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              spreadRadius: 10)
                        ],
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      )),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Route',
                    style: TextStyle(
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              spreadRadius: 10)
                        ],
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView(
              children: [
                IconStepperDemo(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.blue[800],
                    foregroundColor: Colors.white),
                child: const Text('Book This Trip'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconStepperDemo extends StatefulWidget {
  @override
  _IconStepperDemo createState() => _IconStepperDemo();
}

class _IconStepperDemo extends State<IconStepperDemo> {
  // THE FOLLOWING TWO VARIABLES ARE REQUIRED TO CONTROL THE STEPPER.
  int activeStep = 5; // Initial step set to 5.

  int upperBound = 6; // upperBound MUST BE total number of icons minus 1.

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: EasyStepper(
        direction: Axis.vertical,
        activeStepBorderColor: Colors.red,
        activeStepBorderType: BorderType.normal,
        activeStepBackgroundColor: Colors.transparent,
        finishedStepBorderType: BorderType.normal,
        finishedStepBorderColor: Colors.green,
        showScrollbar: false,
        disableScroll: false,
        fitWidth: true,
        unreachedStepBackgroundColor: Colors.white.withOpacity(0.5),
        stepBorderRadius: 1,
        enableStepTapping: true,
        activeStep: activeStep,
        stepShape: StepShape.circle,
        alignment: Alignment.center,
        borderThickness: 2,
        activeStepTextColor: Colors.black87,
        finishedStepBackgroundColor: Colors.transparent,
        finishedStepTextColor: Colors.black87,
        internalPadding: 0,
        showLoadingAnimation: false,
        stepAnimationDuration: const Duration(seconds: 1),
        finishedStepIconColor: Colors.green,
        stepRadius: 50,
        padding: EdgeInsets.zero,
        showTitle: true,
        titlesAreLargerThanSteps: true,
        unreachedStepBorderType: BorderType.normal,
        showStepBorder: true,
        steps: const [
          EasyStep(
              icon: Icon(
                Icons.location_on,
                size: 40,
                color: Colors.blue,
              ),
              customTitle: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Center(child: Text('Jaipur')),
              )),
          EasyStep(
              icon: Icon(
                Icons.location_on,
                size: 40,
                color: Colors.blue,
              ),
              customTitle: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Center(child: Text('Jaipur')),
              )),
          EasyStep(
              icon: Icon(
                Icons.location_on,
                size: 40,
                color: Colors.blue,
              ),
              customTitle: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Center(child: Text('Jaipur')),
              )),
          EasyStep(
              icon: Icon(
                Icons.location_on,
                size: 40,
                color: Colors.blue,
              ),
              customTitle: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Center(child: Text('Jaipur')),
              )),
          EasyStep(
              icon: Icon(
                Icons.location_on,
                size: 40,
                color: Colors.blue,
              ),
              customTitle: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Center(child: Text('Jaipur')),
              )),
        ],
        onStepReached: (index) => setState(() => activeStep = index),
      ),
    );
  }
}
