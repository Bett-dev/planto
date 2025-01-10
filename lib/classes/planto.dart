import 'package:flutter/material.dart';

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
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "data",
                        style: TextStyle(fontSize: 120, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
