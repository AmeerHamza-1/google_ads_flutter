import 'package:flutter/material.dart';
import 'package:google_ads/google_ads.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  var deviceid = ["57BB83500EBBB67624082B2C8E86E269"];
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();
  RequestConfiguration requestConfiguration =
      RequestConfiguration(testDeviceIds: deviceid);
  MobileAds.instance.updateRequestConfiguration(requestConfiguration);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
