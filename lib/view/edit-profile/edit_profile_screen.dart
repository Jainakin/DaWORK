import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../constants.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/input_field_heading.dart';
import '../../widgets/pick_gender.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  String gender = "male";
  String countryCode = "91";
  final TextEditingController phone = TextEditingController();
  final TextEditingController house = TextEditingController();
  final TextEditingController address1 = TextEditingController();
  final TextEditingController address2 = TextEditingController();
  final TextEditingController landmark = TextEditingController();
  final TextEditingController city = TextEditingController();
  final TextEditingController pincode = TextEditingController();
  final TextEditingController state = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Theme.of(context).hintColor, //change your color here
        ),
        title: Text(
          "Edit",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: Text(
                    "Update your details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                const SizedBox(height: 3.0),
                Center(
                  child: Text(
                    "Make changes to update your account",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        letterSpacing: 0.7, fontSize: 11, height: 1.7),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 15.0),
                const InputFieldHeading(text: "First Name"),
                CustomTextFormField(
                  controller: firstName,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required Parameter"),
                  ]),
                  hintText: "Input Field",
                  width: double.infinity,
                ),
                const InputFieldHeading(text: "Last Name"),
                CustomTextFormField(
                  controller: lastName,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required Parameter"),
                  ]),
                  hintText: "Input Field",
                  width: double.infinity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PickGender(
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                      gender: gender,
                      width: 85,
                      value: "male",
                      text: "Male",
                    ),
                    PickGender(
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                      gender: gender,
                      width: 85,
                      value: "female",
                      text: "Female",
                    ),
                    PickGender(
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                      gender: gender,
                      width: 85,
                      value: "other",
                      text: "Other",
                    ),
                  ],
                ),
                const InputFieldHeading(text: "Phone Number"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: CustomTextFormField(
                        controller: phone,
                        keyboardType: TextInputType.phone,
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Required Parameter"),
                          MinLengthValidator(10,
                              errorText: "Invalid Phone Number"),
                          MaxLengthValidator(10,
                              errorText: "Invalid Phone Number"),
                        ]),
                        hintText: "10 digit [0-9] phone number",
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Divider(),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          "Address",
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
                const InputFieldHeading(
                    text: "House No, Building, Company, Apartment"),
                CustomTextFormField(
                  controller: house,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required Parameter"),
                  ]),
                  hintText: "Input Field",
                  width: double.infinity,
                ),
                const InputFieldHeading(text: "Address Line 1"),
                CustomTextFormField(
                  controller: address1,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required Parameter"),
                  ]),
                  hintText: "Input Field",
                  width: double.infinity,
                ),
                const InputFieldHeading(text: "Address Line 2"),
                CustomTextFormField(
                  controller: address2,
                  validator: MultiValidator([
                    // RequiredValidator(errorText: "Required Parameter"),
                  ]),
                  hintText: "Optional Field",
                  width: double.infinity,
                ),
                const InputFieldHeading(text: "Landmark"),
                CustomTextFormField(
                  controller: landmark,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required Parameter"),
                  ]),
                  hintText: "Optional Field",
                  width: double.infinity,
                ),
                const InputFieldHeading(text: "Town/City"),
                CustomTextFormField(
                  controller: city,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required Parameter"),
                  ]),
                  hintText: "Input Field",
                  width: double.infinity,
                ),
                const InputFieldHeading(text: "Pincode"),
                CustomTextFormField(
                  controller: pincode,
                  keyboardType: TextInputType.number,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required Parameter"),
                    MinLengthValidator(6, errorText: "Invalid Pincode"),
                    MaxLengthValidator(6, errorText: "Invalid Pincode"),
                  ]),
                  hintText: "6 digit [0-9] pincode",
                  width: double.infinity,
                ),
                const InputFieldHeading(text: "State"),
                CustomTextFormField(
                  controller: state,
                  keyboardType: TextInputType.number,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required Parameter"),
                  ]),
                  hintText: "Input Field",
                  width: double.infinity,
                ),
                CustomButton(
                  buttonText: "Save",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
