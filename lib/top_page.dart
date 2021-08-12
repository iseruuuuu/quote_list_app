import 'package:flutter/material.dart';
import 'package:quote_list_app/title_list_page.dart';

class TopPage extends StatefulWidget {
  TopPage({Key key,  this.title}) : super(key: key);
  final String title;

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TitleListPage(),
    );
  }
}