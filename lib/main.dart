import 'dart:io';

import 'package:adaptive_responsive_app/desktop.dart';
import 'package:adaptive_responsive_app/mobile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) {
          if (MediaQuery.of(context).size.width.toInt() <= 560) {
            return MediaQuery(
              child: MobileScreen(),
              data: MediaQuery.of(context).copyWith(textScaleFactor: 0.7),
            );
          }

          return DesktopScreen();
        },
      ),
    );
  }
}



// Builder(
//         builder: (context) {
          
//           if (MediaQuery.of(context).size.width.toInt() <= 560)
// return MediaQuery(child: MobileScreen(),data: MediaQuery.of(context).copyWith(textScaleFactor: 0.7),);

//           return DesktopScreen();
//         },
//       ),






// home: LayoutBuilder(
//         builder: (context, constraints) {
//           print(constraints.minWidth.toInt());
//           if (constraints.minWidth.toInt() <= 560) return MobileScreen();

//           return DesktopScreen();
//         },
//       ),