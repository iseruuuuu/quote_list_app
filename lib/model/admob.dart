

class AdMob {
  static bool isTest = false;
  static List<String> testDevices = ['ea8ee3b609d5a0325797d8ef62deddf2'];
  static Map<String, Map<String, String>> productionAdIds = {
    'ios': {
      'banner': 'ca-app-pub-1763191370497028/7358637079',
    },
    'android': {
      'banner': 'ca-app-pub-1763191370497028/9113680259',
    }
  };

  static Map<String, Map<String,String>> testAdIds = {
    'ios': {
      'banner': 'ca-app-pub-3940256099942544/2934735716',
      'intersitial': 'ca-app-pub-3940256099942544/5135589807',
      'reward': 'ca-app-pub-3940256099942544/1712485313'
    },
    'android': {
      'banner': 'ca-app-pub-3940256099942544/6300978111',
      'intersitial': 'ca-app-pub-3940256099942544/8691691433',
      'reward': 'ca-app-pub-3940256099942544/5224354917'
    }
  };

  static String getAdId({ String deviceType,  String adType}) {
    if (isTest == true) {
      return testAdIds[deviceType][adType];
    }else{
      return productionAdIds[deviceType][adType];

    }
  }
}