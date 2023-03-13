import 'dart:io';

import 'package:dawork/view/edit-profile/edit_profile_screen.dart';
import 'package:dawork/widgets/custom_button.dart';
import 'package:dawork/widgets/row_option.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../constants.dart';
import '../personal-details/personal_details_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  XFile? _image;

  void pickImageFromGallery(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = XFile(pickedFile.path);
      });
    }
  }

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
          "Profile",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 3 * horizontalPadding),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const SizedBox(
                //   height: 10.0
                // ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: (_image != null)
                                ? Image.file(File(_image!.path))
                                    as ImageProvider
                                : const NetworkImage(
                                    'https://cdna.artstation.com/p/assets/images/images/000/990/038/large/rodney-amirebrahimi-bb10.jpg?1437660323',
                                  ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 100,
                        child: GestureDetector(
                          // behavior: HitTestBehavior.deferToChild,
                          onTap: () {
                            pickImageFromGallery(context);
                          },
                          child: Container(
                            height: 35.0,
                            width: 35.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).focusColor,
                            ),
                            child: const Icon(
                              Icons.edit,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "Walter White",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                ),
                const SizedBox(height: 2.0),
                const Text(
                  "walterwhitecooking@gmail.com",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 25.0),
                CustomButton(
                  buttonText: "Edit Profile",
                  margin: EdgeInsets.zero,
                  width: MediaQuery.of(context).size.width * 0.6,
                  // height: MediaQuery.of(context).size.width * 0.12,
                  borderRadius: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditProfileScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 40.0),
                const Divider(),
                RowOption(
                  icon: FontAwesomeIcons.user,
                  text: "Account",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PersonalDetailsScreen()));
                  },
                ),
                RowOption(
                  icon: FontAwesomeIcons.gear,
                  text: "Settings",
                  onTap: () {},
                ),
                const Divider(),
                RowOption(
                  icon: FontAwesomeIcons.info,
                  text: "Privacy",
                  onTap: () {},
                ),
                RowOption(
                  icon: FontAwesomeIcons.signOut,
                  text: "Sign out",
                  textColor: Colors.red,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
