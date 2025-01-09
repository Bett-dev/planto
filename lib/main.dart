import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PlantWebsite(),
    );
  }
}

class PlantWebsite extends StatelessWidget {
  const PlantWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Background image and header
              Stack(
                children: [
                  // Background Image
                  Container(
                    height: 600,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/bg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Header
                  Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Logo
                          Container(
                            child: Row(
                              children: const [
                                Text(
                                  'Planto.',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      
                          // Navigation Links
                          Container(
                            child: Row(
                              children: const [
                                NavLink(title: 'Home'),
                                NavLink(title: "Plant Type's"),
                                NavLink(title: 'More'),
                                NavLink(title: 'Contact'),
                              ],
                            ),
                          ),
                      
                          // Icons
                          Container(
                            child: Row(
                              children: const [
                                Icon(Icons.search, color: Colors.white),
                                SizedBox(width: 10),
                                Icon(Icons.shopping_cart, color: Colors.white),
                                SizedBox(width: 10),
                                Icon(Icons.menu, color: Colors.white),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Hero Section
                  Positioned(
                    bottom: 50,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Breath Natural',
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium dolor magna, at pellentesque tortor accumsan eget.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                ),
                                child: const Text('Explore'),
                              ),
                              const SizedBox(width: 10),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.white),
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                ),
                                child: const Text('Live Demo', style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Trendy Plants Section
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SectionTitle(title: 'Our Trendy Plants'),
                    SizedBox(height: 20),
                    PlantCard(title: 'For Small Decs AI Plant', price: 'Ksh. 599/-'),
                    PlantCard(title: 'For Small Decs AI Plant', price: 'Ksh. 599/-'),
                  ],
                ),
              ),

              // Footer
              Container(
                color: Colors.black,
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Logo and description
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Planto.',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eget risus nec metus tempor bibendum.',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                      
                          // Quick Links
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              FooterLink(title: 'Home'),
                              FooterLink(title: "Plant Type's"),
                              FooterLink(title: 'More'),
                              FooterLink(title: 'Contact'),
                            ],
                          ),
                      
                          // Newsletter
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "For Every Update's",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 10),
                              NewsletterField(),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        'Planto © All Rights Reserved',
                        style: TextStyle(color: Colors.grey),
                      ),
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
  final String title;
  const NavLink({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  final String title;
  final String price;
  const PlantCard({required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              price,
              style: const TextStyle(color: Colors.green, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class FooterLink extends StatelessWidget {
  final String title;
  const FooterLink({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        title,
        style: const TextStyle(color: Colors.grey, fontSize: 16),
      ),
    );
  }
}

class NewsletterField extends StatelessWidget {
  const NewsletterField();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter Email...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('SUBSCRIBE'),
          ),
        ],
      ),
    );
  }
}
