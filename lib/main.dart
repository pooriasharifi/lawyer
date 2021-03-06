import 'package:app/Screans/binding/menuBinding.dart';
import 'package:app/modules/menu.dart';
import 'package:app/Screans/views/Login.dart';
import 'package:app/Screans/views/Splash.dart';
import 'package:app/Screans/views/home/accountBalance.dart';
import 'package:app/Screans/views/home/archive.dart';
import 'package:app/Screans/views/home/setting.dart';
import 'package:app/Screans/views/home/textEditor.dart';
import 'package:app/Screans/views/profile/addUser.dart';
import 'package:app/Screans/views/profile/editeProfile.dart';
import 'package:app/Screans/views/profile/messages.dart';
import 'package:app/Screans/views/welcom/welcom.dart';
import 'package:app/modules/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'Screans/views/home/home.dart';
import 'Screans/views/home/links.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      // darkTheme: ThemeData.dark(),
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF000000),
          primaryColor: Color(0xFF13DA9E),
          textTheme: TextTheme(
              subtitle1: TextStyle(
                  fontSize: 16,
                  color: itemTextFeild.withOpacity(1),
                  fontFamily: 'vazir'),
              headline1: TextStyle(
                  fontSize: 105, color: Colors.white, fontFamily: 'ir'),
              bodyText1: TextStyle(
                  fontSize: 16, color: bl.withOpacity(1), fontFamily: 'vazir',shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 0),
                  blurRadius: 3.0,
                  color: white.withOpacity(1),
                ),
                Shadow(
                  offset: Offset(0, 0),
                  blurRadius: 8.0,
                  color: bl.withOpacity(1),
                ),
              ],),
              headline2: TextStyle(
                  fontSize: 16, color: Colors.white, fontFamily: 'vazir'),
              headline3: TextStyle(
                fontFamily: 'titr',
                fontSize: 25,
                color: white.withOpacity(1),
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 3.0,
                    color: white.withOpacity(1),
                  ),
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 8.0,
                    color: bl.withOpacity(1),
                  ),
                ],
              ),
          overline: TextStyle(
              fontSize: 10, color: bl.withOpacity(1), fontFamily: 'vazir'),
            button: TextStyle(
                fontSize: 18, color: bg, fontFamily: 'titr',),
          ),
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => SplashPage()),
        GetPage(
          name: '/login',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/menu',
          binding: MenuBinding(),
          page: () => Menu(),
        ),
        GetPage(
            name: '/messages',
            page: () => MessagesPage(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: '/editProfile',
            page: () => EditProfile(),
            ),
        GetPage(
            name: '/addUser',
            page: () => AddUser(),
            ),
        GetPage(
            name: '/welcom',
            page: () => WelcomPage(),
            ),
        GetPage(
            name: '/archive',
            page: () => ArchivePage(),
            ),
        GetPage(
            name: '/links',
            page: () => LinksPage(),
            ),
        GetPage(
            name: '/textEditor',
            page: () => TextEditorPage(),
            ),
        GetPage(
            name: '/setting',
            page: () => SettingPage(),
            ),
        GetPage(
            name: '/accountBalance',
            page: () => AccountBalancePage(),

            ),

      ],

      home: SplashPage(),
    );
  }
}
