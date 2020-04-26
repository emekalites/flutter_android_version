[![Buy Me A Coffee](https://img.shields.io/badge/Donate-Buy%20Me%20A%20Coffee-yellow.svg)](https://www.buymeacoffee.com/emekaihedoro)

# androidversion

Get android version code and name.

## Description
Get the Android device Version Name, Release Code and Version Code.

## How to Use

Get Android Information:

```dart
String androidInfo;
// Platform messages may fail, so we use a try/catch PlatformException.
try {
  androidInfo = await AndroidInfo.version;
} on PlatformException {
  androidInfo = 'Failed to get platform version.';
}
```
    
## Example

```dart
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:androidversion/androidversion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<dynamic, dynamic> _info = {};

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    Map<dynamic, dynamic> info;
    try {
      info = await AndroidInfo.version;
    } on PlatformException {
      info = {'error': 'Failed to get platform version.'};
    }

    if (!mounted) return;

    setState(() => _info = info);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_info\n'),
        ),
      ),
    );
  }
}

```
