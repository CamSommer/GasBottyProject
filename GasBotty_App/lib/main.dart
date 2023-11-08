import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GasBotty',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GasBotty')),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50),
                Container(
                  height: 150, 
                  width: 150,
                  color: Colors.grey,
                  child: Center(child: Text("Logo", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
                ),
                SizedBox(height: 10),
                Text("GasBotty", style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    minimumSize: Size(200, 50),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CameraScreen()));
                  },
                  child: Text('Camera'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    minimumSize: Size(200, 50),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PriceMatchScreen()));
                  },
                  child: Text('Price Match'),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10.0, 
            left: 10.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(12),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                },
                child: Icon(Icons.settings, size: 24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Notifications'),
            value: false, 
            onChanged: (bool value) {
              // what button does when changed
            },
          ),
          SwitchListTile(
            title: const Text('Appearance'),
            value: false, 
            onChanged: (bool value) {
              // what button does when changed
            },
          ),
        ],
      ),
    );
  }
}

class PriceMatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Price match')),
      body: Center(child: Text('something')),
    );
  }
}

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Camera')),
      body: Center(child: Text('something')),
    );
  }
}