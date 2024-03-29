import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  //keys
  static String userLoggedInKey = "LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";

  // Saving data to SF

  static Future<bool> saveUserLogginStatus(bool isUserLoggedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(userLoggedInKey, isUserLoggedIn);
  }

  static Future<bool> saveUserNameSF(String userName) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userNameKey, userName);
  }

  static Future<bool> saveUserEmailSF(String userEmail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmailKey, userEmail);
  }

  // getting data from SF

  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }

  static Future<String?> getUserEmailFromSF() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(userEmailKey);
  }

  static Future<String?> getUserNameFromSF() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(userNameKey);
  }

  static Future<void> loadAssets() async {
    // Load all the images using rootBundle.load
    await Future.wait([
      rootBundle.load(
          'assets/images/HomeScreen/pexels-vinicius-wiesehofer-1130626.jpg'),
      rootBundle.load(
          'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-guilherme-almeida-1858175.jpg'),
      rootBundle.load(
          'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-moose-photos-1587009.jpg'),
      rootBundle.load(
          'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-mushtaq-hussain-15242467.jpg'),
      rootBundle.load(
          'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-ruslan-sikunov-16542850.jpg'),
      rootBundle.load(
          'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-andrea-piacquadio-774909.jpg'),
      rootBundle.load(
          'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-bianca-1322543.jpg'),
      rootBundle.load(
          'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-jc-laurio-1288182.jpg'),
      rootBundle.load(
          'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-juliana-stein-1898555.jpg'),
      rootBundle.load(
          'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-nur-andi-ravsanjani-gusma-974266.jpg'),
      rootBundle.load(
          'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-serhii-volyk-15237921.jpg'),
      rootBundle.load('assets/images/CourseScreen/socratesmethod.jpg'),
      rootBundle.load(
          'assets/images/CourseScreen/10-bai-hoc-dat-gia-tu-nha-gia-kim-elleman-1.jpg'),
      rootBundle.load('assets/images/WelcomePage/mascot.png'),
      rootBundle.load('assets/images/WelcomePage/Rate_1.png'),
      rootBundle.load('assets/images/WelcomePage/Rate_2.png'),
      rootBundle.load('assets/images/WelcomePage/Rate_3.png'),
      rootBundle.load('assets/images/WelcomePage/Rate_4.png'),
      rootBundle.load('assets/images/WelcomePage/Rate_5.png'),
      rootBundle.load('assets/images/WelcomePage/Rate_6.png'),
    ]);
    // Load other asset types such as fonts, json files, etc. using their respective methods
    // await rootBundle.loadFont('assets/fonts/font1.ttf');
    // await rootBundle.loadString('assets/data/data.json');
  }
}
