// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import 'package:dawork/constants.dart';
import 'package:dawork/providers/create_gig_provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CreateGigScreen extends StatefulWidget {
  const CreateGigScreen({Key? key}) : super(key: key);

  @override
  State<CreateGigScreen> createState() => _CreateGigScreenState();
}

class _CreateGigScreenState extends State<CreateGigScreen> {
  final TextEditingController description = TextEditingController();
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  pickImageFromGallery(int i) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      if (i ==
          Provider.of<CreateGigProvider>(
            context,
            listen: false,
          ).images.length) {
        Provider.of<CreateGigProvider>(context, listen: false)
            .addImage(XFile(pickedFile.path));
      } else {
        Provider.of<CreateGigProvider>(context, listen: false)
            .addImageAtIndex(i, XFile(pickedFile.path));
      }
    }
  }

  void onCarouselDotTap(int index) {
    carouselController.animateToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Theme.of(context).hintColor, //change your color here
        ),
        title: Text(
          "Create Gig",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Consumer<CreateGigProvider>(
          builder: (context, gig, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider(
                  carouselController: carouselController,
                  items: List.generate(
                    gig.images.length + 1,
                    (index) => Card(
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: GestureDetector(
                        onTap: () => pickImageFromGallery(index),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: const Color(0xffF2F2F2),
                          ),
                          height: screenHeight * 0.25,
                          width: screenWidth - 30,
                          child: index == gig.images.length
                              ? gig.images.isEmpty
                                  ? const Icon(Icons.camera_alt_outlined)
                                  : const Icon(Icons.add)
                              : ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      15.0,
                                    ),
                                  ),
                                  child: Image.file(
                                    File(gig.images[index].path),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    enlargeCenterPage: false,
                    autoPlay: false,
                    height: screenHeight * 0.25,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: false,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10.0),
                      Center(
                        child: AnimatedSmoothIndicator(
                          activeIndex: currentIndex,
                          count: gig.images.length + 1,
                          curve: Curves.fastOutSlowIn,
                          onDotClicked: onCarouselDotTap,
                          effect: ExpandingDotsEffect(
                            activeDotColor: Theme.of(context).focusColor,
                            dotColor: Theme.of(context).focusColor.withOpacity(0.5),
                            radius: 8.0,
                            dotHeight: 8.0,
                            dotWidth: 10.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
