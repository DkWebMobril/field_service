import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences prefs;
  // static ValueNotifier<bool> colorChanged = ValueNotifier(false);

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static loginActive(value) {
    prefs.setBool('activate', value);
  }
  static landingActive(value) {
    prefs.setBool('landingActive', value);
  }

  bool? getActivate() {
    final stringValue = prefs.getBool('activate');
    return stringValue;
  }

  static saveUserData(value) {
    prefs.setString('token', value);
  }

  static saveMessageColor(fontCOlors, fontSIZE) {
    prefs.setString('msgColor', fontCOlors);
    prefs.setDouble('msgFontSize', fontSIZE);
    // colorChanged.value = !colorChanged.value;
  }

  static saveUserBGImage(value) {
    prefs.setString('bgIm', value);
  }

/////// save user data  /////////
  static saveuserProfile(userId, name, mobile, email, profPic, typeLogin) {
    prefs.setString('userId', userId);
    prefs.setString('name', name);
    prefs.setString('mobile', mobile);
    prefs.setString('email', email);
    prefs.setString('profPic', profPic);
    prefs.setString('typeLogin', typeLogin);
  }

  //////////////// save data for toggle ////////////////

  static toggleDuration(sessionDur, msgInter, msgDur) {
    prefs.setInt('sessionDur', sessionDur);
    prefs.setString('msgInter', msgInter);
    prefs.setInt('msgDur', msgDur);
  }

  static toogleList(messagesToggleList) {
    prefs.setStringList('itemsMessage', messagesToggleList);

    // prefs.setString('itemsMessage', messagesToggleList.toString());
  }

  static List? getToggleSessionMsg() {
    List<String>? msgLisst = prefs.getStringList('itemsMessage');
    return msgLisst;
  }

  //////////////// save data for toggle ////////////////

  static String? getStringValuesSF() {
    String? stringValue = prefs.getString('token');
    return stringValue;
  }

  static removeMsgList() { 
    prefs.remove('itemsMessage');
  }

  static removeUserToken() {
    prefs.remove("token");
    prefs.remove("activate");
    prefs.remove("sessionDur");
    prefs.remove("msgInter");
    prefs.remove("itemsMessage");
    prefs.remove("msgColor");
    prefs.remove("msgFontSize");
  }
}
