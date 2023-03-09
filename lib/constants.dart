import 'package:flutter/material.dart';

const kTextStyle = TextStyle(
    color: Color(0xff243448),
    fontWeight: FontWeight.w700,
    fontSize: 14,
    fontFamily: 'TTNormsPro-Regular');

const kTabTextStyle = TextStyle(
    color: Color(0xff000000),
    fontWeight: FontWeight.w500,
    fontSize: 12,
    fontFamily: 'TTNormsPro-Regular');

const kHeaderStyle = TextStyle(
    color: Color(0xff000000),
    fontWeight: FontWeight.w500,
    fontSize: 20,
    fontFamily: 'TTNormsPro-Regular');

const kBackgroudTextStyle = TextStyle(
    color: Color(0x66000000),
    fontWeight: FontWeight.w500,
    fontSize: 10,
    fontFamily: 'TTNormsPro-Regular');

const kForegroudTextStyle = TextStyle(
    color: Color(0xff000000),
    fontWeight: FontWeight.w500,
    fontSize: 12,
    fontFamily: 'TTNormsPro-Regular');

const kIcon = Icon(
  Icons.arrow_back_ios_new_sharp,
  color: Colors.black,
);

const kFormHeadTextStyle = TextStyle(
    color: Color(0xE6333333),
    fontWeight: FontWeight.w400,
    fontSize: 10,
    fontFamily: 'TTNormsPro-Regular');

const kFieldText = TextStyle(
    color: Color(0xff9EA3A2),
    fontWeight: FontWeight.w500,
    fontSize: 24,
    fontFamily: 'TTNormsPro-Regular');

const kTitleFieldDecoration = InputDecoration(
  // contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Enter a short distinct name',
  hintStyle: kFieldText,
  border: InputBorder.none,
);

const kSummaryFieldText = TextStyle(
    color: Color(0xff9EA3A2),
    fontWeight: FontWeight.w500,
    fontSize: 20,
    height: 1.5,
    fontFamily: 'TTNormsPro-Regular');

const kSummaryFieldDecoration = InputDecoration(
  // contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText:
  'Enter a brief summary of your event so guests know what to expect',
  hintStyle: kSummaryFieldText,
  border: InputBorder.none,
);
const kHashTagsFieldDecoration = InputDecoration(
  // contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText:
  'Double tap on the tag to delete',
  hintStyle: kSummaryFieldText,
  border: InputBorder.none,
);

const kSearchDecoration1 = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  fillColor: Color(0xffF2F2F2),
  filled: true,
  prefixIcon: Icon(
    Icons.search,
    color: Color(0x33434343),
  ),
  hintText: 'Search for a location',
  hintStyle: TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: Color(0x331F1F1F)),
  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(32.0)),
  // ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(18.0)),
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(18.0)),
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
  ),
);

const kSearchDecoration2 = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  fillColor: Color(0xffF2F2F2),
  filled: true,
  prefixIcon: Icon(
    Icons.search,
    color: Color(0x33434343),
  ),
  hintText: 'Enter the link',
  hintStyle: TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: Color(0x331F1F1F)),
  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(32.0)),
  // ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(18.0)),
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(18.0)),
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
  ),
);

const kFormFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),

  hintText: '12%',
  hintStyle: TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff9EA3A2)),
  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(32.0)),
  // ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(18.0)),
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(18.0)),
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
  ),
);

String photoUrl = "";
String name = "";
String emailId = "";
String userId = "";
String firstName = "";
String lastName = "";
bool paidUser = false;
