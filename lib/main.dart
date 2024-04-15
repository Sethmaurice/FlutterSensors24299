import 'package:flutter/material.dart';
import 'package:seth_app/compass/compass.dart';
import 'package:seth_app/sensor/google_map.dart';
import 'package:seth_app/map/explore.dart';
import 'package:seth_app/sensor/lightSensor.dart';
import 'package:seth_app/sensor/google_map.dart';
import 'package:seth_app/step/step_counter.dart';

// import 'package:seth_app/after/proximity_sensor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Seth App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ).copyWith(
          secondary: Colors.deepPurpleAccent,
        ),
      ),
      // home: GoogleMaps(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExplorePage()),
                );
              },
              child: Text('Google Maps'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LightSensorPage()),
                );
              },
              child: Text('light Sensor'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StepCounter()),
                );
              },
              child: Text('Step counter'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CompassPage()),
                );
              },
              child: Text('Compass'),
            ),
            // Add more buttons for other screens if needed
          ],
        ),
      ),
    );
  }
}
