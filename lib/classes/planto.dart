import 'package:flutter/material.dart';
import 'package:planto/constants/constants.dart';

class Planto extends StatefulWidget {
  const Planto({super.key});

  @override
  State<Planto> createState() => _PlantoState();
}

class _PlantoState extends State<Planto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1728),
          child: Stack(
            fit: StackFit.loose,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/bg.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 47, right: 47, top: 45),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline
                          .alphabetic, // Required for proper baseline alignment
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Logo and Title
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Image.asset(
                              'images/logo.png',
                              height: 60, // Image size
                            ),
                            SizedBox(
                                width:
                                    10), // Adds spacing between image and text
                            Text(
                              "Planto",
                              style: kLogoTextStyle.copyWith(
                                fontSize:
                                    40, // Adjust font size to align with image baseline
                              ),
                            ),
                          ],
                        ),

                        // Navigation Links
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            NavLink(title: 'Home'),
                            NavLink(title: 'Plant Types'),
                            NavLink(title: 'More'),
                            NavLink(title: 'Contact'),
                          ]
                              .map((link) => Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: link,
                                  ))
                              .toList(),
                        ),

                        // Icons
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.search, color: Colors.white, size: 28),
                            SizedBox(width: 10),
                            Icon(Icons.shopping_cart,
                                color: Colors.white, size: 28),
                            SizedBox(width: 10),
                            Icon(Icons.menu, color: Colors.white, size: 28),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavLink extends StatelessWidget {
  const NavLink({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Text(
        title,
        style: kNavTextStyle,
      ),
    );
  }
}
