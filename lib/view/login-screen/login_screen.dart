import 'package:country_picker/country_picker.dart';
import 'package:dawork/constants.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../otp-screen/otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double safePaddingTop = MediaQuery.of(context).padding.top;
    final formKey = GlobalKey<FormState>();
    String countryCode = "91";
    final phoneController = TextEditingController();
    final phoneValidator = MultiValidator([
      RequiredValidator(errorText: 'Phone number is required'),
      MinLengthValidator(10, errorText: 'Enter Valid Phone Number'),
      MaxLengthValidator(10, errorText: 'Enter Valid Phone Number')
    ]);

    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: true,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Theme.of(context).focusColor,
                padding: EdgeInsets.only(top: safePaddingTop + 60.0, bottom: 60.0),
                width: double.infinity,
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      text: "Da",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 72.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "TT Norms Pro",
                      ),
                      children: [
                        TextSpan(
                          text: "Work",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 72.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "TT Norms Pro",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10.0),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Your Everyday Gig\nSolution.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Expanded(
                            child: Divider(),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              "Log in or sign up",
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                      child: Text(
                        "Phone no.",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 13.0,
                              color: Theme.of(context).hintColor,
                            ),
                        // textAlign: textAlign,
                      ),
                    ),
                    Form(
                      key: formKey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (() {
                              showCountryPicker(
                                context: context,
                                showPhoneCode: true,
                                onSelect: (Country country) {
                                  // setState(() {
                                  //   countryCode = country.phoneCode;
                                  // }
                                  // );
                                },
                              );
                            }),
                            child: Container(
                              // width: 60.0,
                              height: 50.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text(
                                  "+$countryCode",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16.0),
                          Expanded(
                            child: CustomTextFormField(
                              controller: phoneController,
                              validator: phoneValidator,
                              hintText: "Phone Number",
                              keyboardType: TextInputType.number,
                              // height: 50.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      buttonText: "LOG IN",
                      margin: const EdgeInsets.only(top: 25.0, bottom: 15.0),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtpScreen()));
                        if (formKey.currentState!.validate()) {
                          // Get.toNamed("/home");
                          // phoneSignIn(context);
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Expanded(
                            child: Divider(),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              "or",
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60.0,
                          height: 50.0,
                          margin: const EdgeInsets.only(
                            top: 5.0,
                            bottom: 30.0,
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Theme.of(context).primaryColor,
                              elevation: 0.0,
                              alignment: Alignment.center,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(
                                  width: 1.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                            child: Image.asset(
                              "assets/images/google.png",
                              width: 27.0,
                              height: 27.0,
                            ),
                          ),
                        ),
                        Container(
                          width: 60.0,
                          height: 50.0,
                          margin: const EdgeInsets.only(
                            top: 5.0,
                            bottom: 30.0,
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Theme.of(context).primaryColor,
                              elevation: 0.0,
                              alignment: Alignment.center,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(
                                  width: 1.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                            child: Icon(
                              Icons.more_vert,
                              size: 27.0,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "By Continuing you agree to our",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      "Terms of Service Privacy Content Policy",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).focusColor,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
