import 'dart:io';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:quote_list_app/detail_page.dart';

import 'model/admob22222.dart';
import 'model/contents.dart';


class TitleListPage extends StatefulWidget {
  @override
  _TitleListPageState createState() => _TitleListPageState();
}

class _TitleListPageState extends State<TitleListPage> {

  List<BannerAd> bannerAds = [];
  bool isLoaded = false;


  List<Contents> contentsList = [
    Contents(title: 'イマヌエル・カント',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'イマヌエル・カント',
        wordJP: '・あらゆる事物は価値を持っているが、人間は尊厳を有している。人間は、決して、目的のための手段にされてはならない\n'
            '・われは孤独である。われは自由である。われはわれみずからの王である\n'
            '・自分のふるまいにおいて、自分をより重要な人間とひきくらべてその仕方を『模倣する』ということは、人間の自然な性癖である',
        wordEN: 'Everything has value, but man has dignity. Man should never be made a means to an end.\n'
            'We are lonely. We are free. We are kings of our own.\n'
            'It is a natural human habit to compare yourself with a more important person in your behavior and to “mimic” that way.',
      ),),

    Contents(title: 'アリストテレス',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'アリストテレス',
        wordJP: '・何人にも恩恵を施す者は、他人より愛されるよりも多く己を愛す\n'
            '・我々が知覚していることや考えていることを意識することは、我々自身の存在を意識することだ\n'
            '・垣根は相手がつくっているのではなく、自分がつくっている',
        wordEN: 'A person who benefits others loves himself more than others love.\n'
            'To be aware of what we perceive and think is to be aware of our own existence.\n'
            'The fence is not made by the other person, but by oneself.',
      ),),



    Contents(title: 'プラトン',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'プラトン',
        wordJP: '・自分に打ち勝つことが、最も偉大な勝利である\n'
            '自分を幸せにする要因を他人に求めず、自分だけに基づく者は幸せに過ごす最善の方策を持つ。この者は節度を知り人間性に富み、賢い\n'
            '自分の人生の主人公になりなさい。あなたは人生で、自分の望むどんなことでも出来るのです\n'
            '目は心の窓である',
        wordEN: 'Overcoming yourself is the greatest victory.\n'
            'A person who is based solely on himself has the best way of spending happiness without asking others to make him happy. This person is modest, humane, and clever.\n'
            'Be the protagonist of your life. You can do whatever you want in life.\n'
            'The eyes are the windows of the heart',
      ),),

    Contents(title: 'ヘーゲル',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'ヘーゲル',
        wordJP: '・誰かが奴隷なのは、彼自身の意志のせいであり、ある民族が他国の足かせのもとに置かれるのも、同じくその民族の意志のせいである\n'
            '・天才を知る者は天才である\n'
            '・この世で情熱なしに達成された偉大なことなどない\n',
        wordEN: 'Someone’s slave is due to his own will, and that one nation is placed under the shackles of another is also due to that nation’s will.\n'
            'A person who knows a genius is a genius.\n'
            'There is nothing great in this world that has been achieved without passion\n',
      ),),

    Contents(title: 'マルクス',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'マルクス',
        wordJP: '・豊かな人間とは、自身が富であるような人間のことであって、富を持つ人間のことではない\n'
            '・各人はその能力に応じて、各人にはその必要に応じて\n'
            '・人間とは、自分の運命を支配する自由な者のことである\n',
        wordEN: 'A rich man is one who is rich, not one who is rich.\n'
            'Each person depends on his/her ability, and each person on his/her need.\n'
            'Human is a free person who controls his destiny.\n',
      ),),

    Contents(title: 'トマス・アクィナス',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'トマス・アクィナス',
        wordJP: '・誰かを愛することは、その人に幸福になってもらいたいと願うことである\n'
            '・哀れみのない正義は冷酷である。しかし、正義のない哀れみは解体の母である\n'
            '・物質は肉体のため、肉体は霊魂のため、人間は神のために存す\n',
        wordEN: 'To love someone is to want that person to be happy.\n'
            'Justiceless pity is cruel. But pityless justice is the mother of demolition.\n'
            'Matter exists for the physical body, physical body for the soul, human existence for God.\n',
      ),),

    Contents(title: 'ハイデガー',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'ハイデガー',
        wordJP: '・人間は、時間的な存在である\n'
            '・人は、いつか必ず死が訪れるということを思い知らなければ、生きているということを実感することもできない\n'
            '・単純なものこそ、変わらないもの、偉大なるものの謎を宿している\n',
        wordEN: 'Human beings are temporal beings\n'
            'A person cannot realize that he/she is alive unless he/she knows that death will surely come someday.\n'
            'Simple things carry the mystery of unchanging and great things.\n',
      ),),

    Contents(title: 'ウィトゲンシュタイン',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'ウィトゲンシュタイン',
        wordJP: '・きみがいいと思ったら、それでいい。誰かから何と言われようと、事実が変わるわけじゃない\n'
            '・人として弱いということは、生きていくうえで受けるべき苦しみを自分で受けとろうとしないことだ\n'
            '・思考しえぬことを我々は思考することはできない。それゆえ、思考しえぬことを我々は語ることもできない\n',
        wordEN: 'If you like it, that’s fine. Whatever someone says, the facts don’t change.\n'
            'Weakness as a person means not trying to accept the suffering that one should suffer in life.\n'
            'We can’t think about things we can’t think of, so we can’t talk about things we can’t think about.\n',
      ),),

    Contents(title: 'ヒューム',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'ヒューム',
        wordJP: '・技芸はひと揃いの衣装を創るであろうが、天性は人間を創らねばならない\n'
            '・友人の自由な会話は、いかなる慰めよりも私を喜ばす\n'
            '・貪欲は勤勉の鞭である\n',
        wordEN: 'Technology will create a set of costumes, but nature must create humans.\n'
            'Free conversation with my friends pleases me more than any comfort\n'
            'Greed is a diligent whip.\n',
      ),),

    Contents(title: 'デカルト',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'デカルト',
        wordJP: '・健康は紛れもなくこの世で最上の善であり、ほかのあらゆる善の基礎となる\n'
            '・人の考えを本当に理解するには、彼らの言葉ではなく、彼らの行動に注意を払え\n'
            '・賛成の数が多いからと言って、何一つ価値のある証拠にはならない\n',
        wordEN: 'Health is unquestionably the best of all in the world and the basis of all other goodness.\n'
            'To really understand a person’s thoughts, pay attention to their actions, not their words.\n'
            'The large number of approvals does not prove anything worthwhile.\n',
      ),),

    Contents(title: 'シモーヌ・ヴェイユ',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'シモーヌ・ヴェイユ',
        wordJP: '・我できる、ゆえに我あり\n',
        wordEN: 'I can, therefore I am.\n',
      ),),


    Contents(title: 'モンテーニュ',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'モンテーニュ',
        wordJP: '・いつかできることはすべて、今日でもできる。\n',
        wordEN: 'Whatever can be done another day can be done today.\n',
      ),),


    Contents(title: 'ウェルギリウス',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'ウェルギリウス',
        wordJP: '・運命の女神は勇者に味方する。\n',
        wordEN: 'Fortune favors the bold.\n',
      ),),


    Contents(title: 'アルベルト・シュバイツァー',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'アルベルト・シュバイツァー',
        wordJP: '・聖人になるために、天使になる必要はない。\n',
        wordEN:'A man does not have to be an angel in order to be saint.\n',
      ),),

    Contents(title: 'ダンテ',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: 'ダンテ',
        wordJP: '・自分の星に従え！\n',
        wordEN: 'Follow your own star!\n',
      ),),



    /*
    Contents(title: '',icon: Icons.arrow_forward_ios,
      page: DetailPage(
        appbar: '',
        wordJP: '・\n',
        wordEN: '\n',
      ),),
     */
  ];

  void initAd() {
    for (int i = 0; i < contentsList.length ~/ 4; i++) {
      //広告を作成
      BannerAd bannerAd = BannerAd(
        //バナー androidはまだ
        //adUnitId: Platform.isAndroid ? AdMob.getAdId(deviceType: 'android', adType: 'banner') : AdMob.getAdId(deviceType: 'ios', adType: 'banner'),
        adUnitId: Platform.isAndroid
            ? 'ca-app-pub-1763191370497028/7358637079'
            : 'ca-app-pub-1763191370497028/7358637079',
        size: AdSize.banner,
        request: AdRequest(),
        listener: AdListener(
            onAdLoaded: (Ad ad) {
              setState(() {
                isLoaded = true;
              });
            }
        ),
      )..load();
      bannerAds.add(bannerAd);
    }
  }

  @override
  void initState() {
    super.initState();
    initAd();
    WidgetsBinding.instance.addPostFrameCallback((_) => initPlugin());
  }

  String _authStatus = 'Unknown';

  Future<void> initPlugin() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      final TrackingStatus status =
      await AppTrackingTransparency.trackingAuthorizationStatus;
      setState(() => _authStatus = '$status');
      // If the system can show an authorization request dialog
      if (status == TrackingStatus.notDetermined) {
        // Show a custom explainer dialog before the system dialog
        if (await showCustomTrackingDialog(context)) {
          // Wait for dialog popping animation
          await Future.delayed(const Duration(milliseconds: 200));
          // Request system's tracking authorization dialog
          final TrackingStatus status =
          await AppTrackingTransparency.requestTrackingAuthorization();
          setState(() => _authStatus = '$status');
        }
      }
    } on PlatformException {
      setState(() => _authStatus = 'PlatformException was thrown');
    }
    final uuid = await AppTrackingTransparency.getAdvertisingIdentifier();
    print("UUID: $uuid");
  }
  Future<bool> showCustomTrackingDialog(BuildContext context) async =>
      await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Thank You For\n'
              ' Downloading 🎉',style: TextStyle(color: Colors.green,fontSize: 30),),
          content: const Text(
            'あなたが興味を引くような広告を設定することができます。\n'
                'アプリを使いやすくするために\n'
                'ご協力よろしくお願いします。',style: TextStyle(fontSize: 15),
          ),
          actions: [
            Divider(color: Colors.black,height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: const Text('了解です',style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
          ],
        ),
      ) ??
          false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('哲学者名言一覧'),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                buildList(),
/*
              Container(
                width: bannerAds[1 ~/ 4].size.width.toDouble(),
                height: bannerAds[1 ~/ 4].size.height.toDouble(),
                child: isLoaded ? AdWidget(ad: bannerAds[1 ~/ 4]) : Container(color: Colors.red) ,
              ),
 */

            AdmobBanner(
              adUnitId: AdMobService().getBannerAdUnitId(),
              adSize: AdmobBannerSize(
                width: MediaQuery.of(context).size.width.toInt(),
                height: AdMobService().getHeight(context).toInt(),
                name: 'SMART_BANNER',
              ),
            ),
              ],
            ),
          )),
    );
  }

  Widget buildList() {
    //下に二つ
    List<Widget> rowChildren = [];
    List<Widget> columnChildren = [];

    for (int i = 0; i < contentsList.length; i++) {
      rowChildren.add(
        Expanded(
          child: InkWell(
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => contentsList[i].page
                ),
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(contentsList[i].title,style: TextStyle(fontSize: 20),),
                    Spacer(),
                    Icon(contentsList[i].icon),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
      columnChildren.add(Row(children: rowChildren));
      rowChildren = [];
    }
    return Column(
      children: columnChildren,

    );
  }
}
