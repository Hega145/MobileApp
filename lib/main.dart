
import 'package:flutter/material.dart';

void main() {
  runApp(const ZX());
}

class ZX extends StatelessWidget {
  const ZX({super.key});

  // Function called when menu icon is pressed
  void doSomething() {
    debugPrint("bla");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething,
            icon: const Icon(Icons.menu),
          ),
          backgroundColor: Colors.blue,
          title: const Text("Profile"),
        ),

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),

                // Circular profile picture
                ClipOval(
                  child: Image.asset(
                    'assets/images/profile.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 10),

                // Profile name
                const Text(
                  "Hega",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),

                const SizedBox(height: 10),

                // Student badge
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(88.888),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.school,
                        size: 17,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Student",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                // Four information cards
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final cardWidth =
                          (constraints.maxWidth - 12) / 2;

                      return Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: [
                          infoCard(
                            cardWidth,
                            Colors.yellowAccent,
                          ),
                          infoCard(
                            cardWidth,
                            Colors.yellowAccent,
                          ),
                          infoCard(
                            cardWidth,
                            Colors.purpleAccent,
                          ),
                          infoCard(
                            cardWidth,
                            Colors.yellowAccent,
                          ),
                        ],
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Reusable widget for information cards
  Widget infoCard(double width, Color color) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/card.png',
            width: 38,
            height: 38,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Text(
            "80%",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          const Text("Hega"),
        ],
      ),
    );
  }
}
