import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Toko_App/Toko_Home_Screan/Toku_Home_Screan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor:  const Color(0xffEEE2D8),
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
                color: Colors.black87
            ),
            iconTheme: IconThemeData(
                color: Colors.black87
            ),
            backgroundColor: Color(0xffEEE2D8),
            systemOverlayStyle: SystemUiOverlayStyle(
            ),
            elevation: 0.0,
            backwardsCompatibility: false,

          )
      ),
      debugShowCheckedModeBanner: false,
      home: const TokoHomeScrean(),
    );
  }
}
