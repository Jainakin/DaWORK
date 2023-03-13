import 'package:dawork/constants.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
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
          "Info",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: SafeArea(
          top: true,
          bottom: true,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(height: 10.0),
                Center(
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://cdna.artstation.com/p/assets/images/images/000/990/038/large/rodney-amirebrahimi-bb10.jpg?1437660323',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Center(
                  child: Text(
                    "Walter White",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 22.0,
                          color: Colors.black,
                        ),
                  ),
                ),
                const SizedBox(height: 2.0),
                const Center(
                  child: Text(
                    "walterwhitecooking@gmail.com",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 2.0),
                const Center(
                  child: Text(
                    "+91 9315956268",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: (MediaQuery.of(context).size.width - 100) / 3,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Date\nJoined",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                  color: Theme.of(context)
                                      .hintColor
                                      .withOpacity(0.9),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              // const SizedBox(height: 7.0),
                              // const Icon(Icons.calendar_today_rounded, size: 20.0,),
                              const SizedBox(height: 10.0),
                              Text(
                                "10/12/23",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  color: Theme.of(context).focusColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width - 100) / 3,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Star\nRating",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                  color: Theme.of(context)
                                      .hintColor
                                      .withOpacity(0.9),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              // const SizedBox(height: 7.0),
                              // const Icon(Icons.star, size: 20.0, color: Colors.yellow,),
                              const SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0,
                                      color: Theme.of(context).focusColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(width: 3.0),
                                  const Icon(
                                    Icons.star,
                                    size: 14.0,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width - 100) / 3,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Gigs\nCompleted",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                  color: Theme.of(context)
                                      .hintColor
                                      .withOpacity(0.9),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              // const SizedBox(height: 7.0),
                              // const Icon(Icons.check_circle_outline, size: 20.0, color: Colors.green,),
                              const SizedBox(height: 10.0),
                              Text(
                                "100+",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  color: Theme.of(context).focusColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25.0),
                const Divider(),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "My Gigs",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                        color: Theme.of(context).hintColor.withOpacity(0.9),
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right_rounded,
                      size: 22.0,
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).hintColor.withOpacity(0.2),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Container(
                        height: 200.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).hintColor.withOpacity(0.2),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15.0),
                const Divider(),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "My Jobs",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                        color: Theme.of(context).hintColor.withOpacity(0.9),
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right_rounded,
                      size: 22.0,
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).hintColor.withOpacity(0.2),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Container(
                        height: 200.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).hintColor.withOpacity(0.2),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15.0),
                const Divider(),
                const SizedBox(height: 10.0),
                ExpandablePanel(
                  theme: ExpandableThemeData(
                    useInkWell: false,
                    expandIcon: Icons.chevron_right_rounded,
                    iconPadding: EdgeInsets.zero,
                    iconSize: 22.0,
                    iconColor: Theme.of(context).hintColor.withOpacity(0.9),
                    iconRotationAngle: 0.785398,
                    animationDuration: const Duration(milliseconds: 100),
                    scrollAnimationDuration: const Duration(milliseconds: 100),
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                  ),
                  header: Text(
                    "Address",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      color: Theme.of(context).hintColor.withOpacity(0.9),
                    ),
                  ),
                  collapsed: Container(),
                  expanded: Text(
                    "House no - G315\nPiyush Heights, Sector - 89\nFaridabad, Haryana\n121002",
                    style: TextStyle(
                      fontSize: 12.0,
                      wordSpacing: 3.0,
                      fontFamily: "TT Norms",
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                ),
                const SizedBox(height: 25.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
