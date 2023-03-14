import 'package:dawork/view/login-screen/login_screen.dart';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:dawork/view/otp-screen/otp_screen.dart';
import 'package:dawork/view/profile-screen/profile_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;
  PageController pageController = PageController();
  bool isIOS = Platform.isIOS;

  void onCurrentIndexChange(int index) {
    setState(() {
      pageIndex = index;
    });
    pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        top: false,
        bottom: true,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey.withOpacity(0.1),
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
                left: 16.0, right: 16.0, top: 16.0, bottom: isIOS ?   0.0 : 16.0),
            child: GNav(
              tabBackgroundGradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Theme.of(context).focusColor.withOpacity(0.5),
                  Theme.of(context).focusColor
                ],
              ),
              gap: 8.0,
              tabBorderRadius: 15.0,
              activeColor: Colors.white,
              iconSize: 16,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              duration: const Duration(milliseconds: 500),
              tabs: [
                GButton(
                  icon: FontAwesomeIcons.house,
                  iconSize: 16.0,
                  text: 'Home',
                  textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                GButton(
                  icon: FontAwesomeIcons.message,
                  iconSize: 16.0,
                  text: 'Messages',
                  textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                GButton(
                  icon: FontAwesomeIcons.user,
                  iconSize: 16.0,
                  text: 'Profile',
                  textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
              selectedIndex: pageIndex,
              onTabChange: (index) {
                onCurrentIndexChange(index);
              },
            ),
          ),
        ),
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: pageController,
          children: const [
            OtpScreen(),
            OtpScreen(),
            ProfileScreen(),
          ],
          onPageChanged: (index) => setState(() {
            pageIndex = index;
          }),
        ),
      ),
    );
  }
}
