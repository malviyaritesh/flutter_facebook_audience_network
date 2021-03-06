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
  _MyAppState() {
    FlutterFacebookAudienceNetwork()
        .addTestDevice('74a34d63-c0b9-4edc-a13d-ef9eb35955bc');
    // InterstitialAd interstitialAd = InterstitialAd(placementID: '285168965174870_285170215174745');
    // interstitialAd.listener = (AdEvent event){
    //   switch (event){
    //     case AdEvent.error:
    //     print("here error");
    //     break;
    //     case AdEvent.clicked:

    //     break;
    //     case AdEvent.diplayed:

    //     break;
    //     case AdEvent.impression:

    //     break;
    //     case AdEvent.loaded:
    //     print("here loaded");
    //     interstitialAd.show();
    //     break;
    //     case AdEvent.dismissed:

    //     break;
    //   }
    // };
    // interstitialAd.load();

    BannerAd bannerAd =
        BannerAd(placementID: '285168965174870_285173298507770');
    bannerAd.listener = (AdEvent event) {
      switch (event) {
        case AdEvent.error:
          print("here error");
          break;
        case AdEvent.clicked:
          break;
        case AdEvent.diplayed:
          break;
        case AdEvent.impression:
          break;
        case AdEvent.loaded:
          print("here loaded");
          
          break;
        case AdEvent.dismissed:
          break;
      }
    };
    bannerAd.load();
    
  }
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {}

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
