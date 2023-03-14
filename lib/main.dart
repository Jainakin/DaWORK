import 'package:dawork/configs/theme.dart';
import 'package:dawork/providers/create_gig_provider.dart';
import 'package:dawork/view/create-gig/create_gig_screen.dart';
import 'package:dawork/view/home-screen/home_screen.dart';
import 'package:dawork/view/login-screen/login_screen.dart';
import 'package:dawork/view/onboard-details/onboard_details_screen.dart';
import 'package:dawork/view/otp-screen/otp_screen.dart';
import 'package:dawork/view/profile-screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: CreateGigProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DaWORK',
        theme: themeData,
        home: const CreateGigScreen(),
      ),
    );
  }
}
