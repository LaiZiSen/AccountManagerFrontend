import 'package:flutter/foundation.dart';

class Account_Types with ChangeNotifier {
  Map<String, String> _account_types = {
    "Valorant":
        "https://yt3.ggpht.com/ytc/AKedOLRVUGjOgpFcXpiYkx915RhVxhGWiVjaCudAg0s-=s900-c-k-c0x00ffffff-no-rj",
    "Google":
        " https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2048px-Google_%22G%22_Logo.svg.png"
  };

  String imageLink(String AccountType) {
    if (_account_types.containsKey(AccountType)) {
      return _account_types[AccountType];
    }
    return "https://w7.pngwing.com/pngs/416/62/png-transparent-anonymous-person-login-google-account-computer-icons-user-activity-miscellaneous-computer-monochrome.png";
  }
}
