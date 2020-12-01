import 'package:flutter/material.dart';
import 'package:flutter_json_serializable/flat_weather_screen.dart';
import 'package:flutter_json_serializable/nested_weather_screen.dart';
import 'package:flutter_json_serializable/open_weather_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json'),
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FlatWeatherScreen();
                      },
                    ),
                  );
                },
                child: Text('Flat Data Structure'),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NestedWeatherScreen();
                      },
                    ),
                  );
                },
                child: Text('Nested Data Structure'),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return OpenWeatherScreen();
                      },
                    ),
                  );
                },
                child: Text('JsonSerializable Data Structure'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
