import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:quote_list_app/top_page.dart';
import 'package:admob_flutter/admob_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  Admob.initialize();
  runApp(MyApp());
}

int totalPoint = 0;
bool isMultply = false;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: TopPage(title: 'Flutter Demo Home Page'),
    );
  }
}
