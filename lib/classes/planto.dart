import 'package:flutter/material.dart';
import 'package:planto/constants/constants.dart';
import 'dart:ui' as ui;

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
                              NavLink(title: 'Contacts'),
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
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n'
                            'Fusce pretium dolor magna, at pellentesque tortor accumsan eget',
                            style: kHeroDescTextStyle,
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              OutlineButton(text: 'Explore.'),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CustomPaint(
                            size: Size(482, 497),
                            painter: RPSCustomPainter(),
                          ),
                          Positioned(
                            top: -221, // Adjust this value to move the image up
                            left:
                                0, // Optional: Center image horizontally if needed
                            right:
                                0, // Optional: Center image horizontally if needed
                            child: Image.asset('images/cactusplant.png'),
                          ),
                          Positioned(
                            top: 300,
                            left: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Trendy House Plant',
                                  style: kHeroplantCardDescTextStyle,
                                ),
                                Text(
                                  'Cactus Plant',
                                  style: kHeroplantCardTitleTextStyle,
                                ),
                                OutlineButton(text: 'Explore'),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // Placeholder for Long Content
                      Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 1200,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid)),
                          )
                        ],
                      ),
                      PlantCard(),
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

class OutlineButton extends StatelessWidget {
  const OutlineButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
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

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 106.134);
    path_0.cubicTo(0, 51.943, 50.554, 11.9322, 103.296, 24.3808);
    path_0.lineTo(228.735, 53.9879);
    path_0.cubicTo(241.848, 57.0828, 255.512, 56.9783, 268.576, 53.6831);
    path_0.lineTo(376.857, 26.3703);
    path_0.cubicTo(429.916, 12.9867, 481.401, 53.0982, 481.401, 107.819);
    path_0.lineTo(481.401, 412.62);
    path_0.cubicTo(481.401, 459.012, 443.793, 496.62, 397.401, 496.62);
    path_0.lineTo(84, 496.62);
    path_0.cubicTo(37.6081, 496.62, 0, 459.012, 0, 412.62);
    path_0.lineTo(0, 106.134);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withAlpha(13); // 0.05 * 255 = ~13
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(1, 106.134);
    path_1.cubicTo(1, 52.5881, 50.9522, 13.0536, 103.066, 25.3541);
    path_1.lineTo(228.505, 54.9611);
    path_1.cubicTo(241.774, 58.0929, 255.601, 57.9871, 268.82, 54.6527);
    path_1.lineTo(377.101, 27.34);
    path_1.cubicTo(429.529, 14.1157, 480.401, 53.7496, 480.401, 107.819);
    path_1.lineTo(480.401, 412.62);
    path_1.cubicTo(480.401, 458.459, 443.241, 495.62, 397.401, 495.62);
    path_1.lineTo(84, 495.62);
    path_1.cubicTo(38.1603, 495.62, 1, 458.459, 1, 412.62);
    path_1.lineTo(1, 106.134);
    path_1.close();

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.004149378;
    paint_1_stroke.shader = ui.Gradient.linear(
      Offset(size.width * 0.08290477, size.height * 0.06759980),
      Offset(size.width * 0.7348983, size.height * 1.089256),
      [
        Colors.white.withAlpha(107), // 0.42 * 255 = ~107
        Colors.white.withAlpha(255), // Fully opaque
        Colors.white.withAlpha(102), // 0.4 * 255 = ~102
      ],
      [0, 0.542066, 0.998086],
    );
    canvas.drawPath(path_1, paint_1_stroke);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Colors.black.withAlpha(145); // Fully opaque black
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class PlantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 1562,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [
            Colors.black.withAlpha(70),
            Colors.green.withAlpha(60),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 30,
            child: Image.asset(
              'images/cactusplant.png', // Replace with your image asset path
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 20,
            top: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'For Small Decs Ai Plat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Lorem ipsum doetium dolor magna, at pellentesque tortor accumsan eget.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Ksh. 599/-',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        side: BorderSide(color: Colors.white),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Explore'),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag),
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
