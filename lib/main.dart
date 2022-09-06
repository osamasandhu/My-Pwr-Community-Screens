import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_pwr_community_screens/src/ui/pages/begin_page.dart';
import 'package:my_pwr_community_screens/src/ui/pages/feed_page.dart';
import 'package:my_pwr_community_screens/src/ui/pages/my_profile_page.dart';
import 'package:my_pwr_community_screens/src/ui/pages/my_support_circle.dart';
import 'package:my_pwr_community_screens/src/ui/pages/on_boarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.urbanistTextTheme(),
      ),
      // home:  MySupportCirclePage(),
    home: BeginPage(),);
  }
}

