import 'package:flutter/material.dart';
import 'package:sneakers/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/Logo_Adidas.png",
              height: h / 5,
            ),
          ),
          SizedBox(
            height: h / 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
            },
            child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: h / 10,
                  vertical: h / 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.black87,
                ),
                child: const Text(
                  "Shop Now",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
