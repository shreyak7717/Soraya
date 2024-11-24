import 'package:flutter/material.dart';
import 'package:soraya/profile/mywishlist.dart';
import 'onboarding/welcome.dart';
import 'onboarding/signup.dart';
import 'product/productlisting.dart';
import 'product/productdetails.dart';
import 'profile/mybag.dart';
import 'profile/myorders.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboarding/login.dart';
import 'home.dart';
import 'profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.poppinsTextTheme();

    return MaterialApp(
      title: 'Soraya',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFFF5D8F),
          secondary: const Color(0xFFFFC4D6),
          brightness: Brightness.light,
        ),
        textTheme: textTheme.apply(),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Welcome(),
      // home: const ProductListing(),
      // home: const ProductDetails(),
      // home: const MyBag(),
      // home: const MyWishlist(),
      // home: const MyOrders(),
      // home: const ProductListing(),
      // home: const Signup(),
      // home: const Login(),
      // home: const Home(),
      // home: const profile(),
    );
  }
}
