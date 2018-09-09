import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_facebook_audience_network/flutter_facebook_audience_network.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  _MyAppState(){
    FlutterFacebookAudienceNetwork flutterFacebookAudienceNetwork = FlutterFacebookAudienceNetwork.instance;
    flutterFacebookAudienceNetwork.addTestDevice("DEVICE HASH");
    InterstitialAd interstitialAd = InterstitialAd.instance;
    interstitialAd.init(placementID: "PLACEMENT ID");
    interstitialAd.listener = (InterstitialAdEvent event){
      if(event == InterstitialAdEvent.loaded){
        interstitialAd.show();
      }
    };
    interstitialAd.load();
    
  }
  @override
  void initState() {
    super.initState();
    initPlatformState();
    
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {

    
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Plugin example app'),
        ),
        body: new Center(
          child: new Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }
}