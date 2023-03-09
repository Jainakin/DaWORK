import 'package:dawork/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    final otpController = TextEditingController();

    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Theme.of(context).hintColor, //change your color here
          ),
          title: Text(
            "Log in",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40.0),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Verification Code",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          letterSpacing: 1.0,
                        ),
                  ),
                ),
                const SizedBox(height: 15.0),
                Text(
                  "Please type the verification code send to\n+91 9315956268",
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        letterSpacing: 0.7,
                        fontSize: 11.0,
                        height: 1.7,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 60.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: PinCodeTextField(
                    controller: otpController,
                    useHapticFeedback: true,
                    autoFocus: false,
                    appContext: context,
                    pastedTextStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    length: 6,
                    animationType: AnimationType.none,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderWidth: 4.0,
                      borderRadius: BorderRadius.circular(7.0),
                      // fieldHeight: 52,
                      // fieldWidth: 44,
                      activeFillColor: Theme.of(context).primaryColor,
                      activeColor: Theme.of(context).primaryColor,
                      selectedColor: Theme.of(context).primaryColor,
                      inactiveColor: Theme.of(context).primaryColor,
                      selectedFillColor: Theme.of(context).primaryColor,
                      inactiveFillColor: Theme.of(context).primaryColor,
                    ),
                    cursorColor: Theme.of(context).focusColor,
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    onCompleted: (v) {},
                    onChanged: (value) {},
                    beforeTextPaste: (text) {
                      return true;
                    },
                  ),
                ),
                const SizedBox(height: 60.0),
                Text(
                  "RESEND?",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                CustomButton(
                  buttonText: "Next",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
