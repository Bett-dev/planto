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
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 1728,
                  minHeight:
                      2000, // Ensure the page has a minimum height of 2000px
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 47, vertical: 45),
                  child: Column(
                    children: [
                      // Header Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          // Logo and Title
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Image.asset(
                                'images/logo.png',
                                height: 60,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Planto",
                                style: kLogoTextStyle.copyWith(fontSize: 40),
                              ),
                            ],
                          ),

                          // Navigation Links
                          Row(
                            children: const [
                              NavLink(title: 'Home'),
                              NavLink(title: 'Plant Types'),
                              NavLink(title: 'More'),
                              NavLink(title: 'Contact'),
                            ],
                          ),

                          // Icons
                          Row(
                            children: const [
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

                      const SizedBox(height: 60),

                      // Hero Section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Breathe Natural', style: kHeroTextStyle),
                          const SizedBox(height: 10),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                            'Fusce pretium dolor magna, at pellentesque tortor accumsan eget.',
                            style: kHeroDescTextStyle,
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.white),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                ),
                                child: const Text(
                                  'Explore',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Placeholder for Long Content
                      const SizedBox(height: 800),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Navigation Link Widget
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
