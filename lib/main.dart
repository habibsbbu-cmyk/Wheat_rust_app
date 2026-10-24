import 'package:flutter/material.dart';

void main() {
  runApp(WheatRustApp());
}

class WheatRustApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Da Ghanmo Naroghi Kashf',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Da Ghanmo Naroghi Kashf'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.grass, size: 100, color: Colors.green),
            SizedBox(height: 20),
            Text(
              'Wheat Yellow Rust Detection',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Pashto-enabled AI Assistant',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text('UoA Peshawar - CS-511'),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) => DetectionScreen()));
              },
              icon: Icon(Icons.camera_alt),
              label: Text('Take Photo of Wheat Leaf'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) => ResultScreen()));
              },
              icon: Icon(Icons.mic),
              label: Text('Pashto Voice Query'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Camera'), backgroundColor: Colors.green),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.grey[300],
              child: Icon(Icons.camera_alt, size: 80),
            ),
            SizedBox(height: 20),
            Text('Camera Preview Here'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) => ResultScreen()));
              },
              child: Text('Detect Disease - YOLOv8'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result'), backgroundColor: Colors.green),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              color: Colors.yellow[100],
              child: Center(child: Text('Wheat Leaf Image with Yellow Box\nYellow Rust 95%')),
            ),
            SizedBox(height: 20),
            Text('Disease: Yellow Rust (Zher Rust)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red)),
            SizedBox(height: 10),
            Text('Confidence: 95%'),
            Text('Severity: 70% - Severe'),
            SizedBox(height: 20),
            Text('Pashto Advisory:', style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.green[50],
              child: Text(
                'Pa ghanam ke zher rust naroghi da. Tilt 250 EC spray 200ml per acre sahr ke wakai. Mask waachawai.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Text('Recommended Pesticide: Tilt 250 EC - Rs. 2500 (PARC Recommended)'),
            Text('UCS Search: Cheapest effective option selected'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Call Pesticide Shop in Tarnab'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
