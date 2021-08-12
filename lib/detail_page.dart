import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


class DetailPage extends StatefulWidget {
  DetailPage({ this.appbar, this.wordJP, this.wordEN});
  String appbar;
  String wordJP;
  String wordEN;


  @override

  _DetailPageState createState() => _DetailPageState(appbar: appbar,wordJP: wordJP, wordEN: wordEN);
}

class _DetailPageState extends State<DetailPage> {



  _DetailPageState({this.appbar,this.wordJP,this.wordEN });
  String appbar;
  String wordJP;
  String wordEN;

  FlutterTts flutterTts;
  bool islangugage = false;

  bool playing = false;
  bool playing2 = false;
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    if (islangugage == false) {
      flutterTts.setLanguage('ja-Jp');
    }else {
      flutterTts.setLanguage('en-US');
    }
  }

  _speak(msg) {
    flutterTts.speak(msg);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$appbarの名言'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top:5,right: 10,left: 10 ),
                child: Text(wordJP, style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            Container(width: 300, height: 50, margin: EdgeInsets.all(10),
              child: RaisedButton(
                child: Text('音声で聞く',style: TextStyle(fontSize: 20,color: Colors.white)),
                color: Colors.blue, shape: const StadiumBorder(),
                onPressed: () {
                  if (playing == false) {
                    playing = true;
                    flutterTts.setLanguage('ja-Jp');
                    flutterTts.speak(wordJP);
                  }else{
                    playing = false;
                    flutterTts.stop();
                  }

                },
              ),
            ),

            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top:5,right: 10,left: 10 ),
                child: Text(wordEN, style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            Container(width: 300, height: 50, margin: EdgeInsets.all(10),
              child: RaisedButton(
                child: Text('音声で聞く',style: TextStyle(fontSize: 20,color: Colors.white)),
                color: Colors.blue, shape: const StadiumBorder(),
                onPressed: () {
                  print(playing2);
                  if (playing2 == false) {
                    playing2 = true;
                    flutterTts.setLanguage('en-US');
                    flutterTts.speak(wordEN);
                  }else {
                    flutterTts.stop();
                    playing2 = false;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}