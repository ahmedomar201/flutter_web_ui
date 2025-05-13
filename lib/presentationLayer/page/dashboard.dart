import 'package:flutter/material.dart';
import 'package:flutter_web_ui/core/utils/responsive.dart';
import '../widget/card.dart';
import '../widget/header.dart';
import '../widget/item.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context) || Responsive.isTablet(context)) {
      return Scaffold(
        drawer: Drawer(),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),

              Divider(thickness: 0.5, indent: 0.5),
              const SizedBox(height: 30),
              Padding(padding: const EdgeInsets.all(16.0), child: Items()),
              const SizedBox(height: 50),
              Center(
                child: Column(
                  children: [
                    CustomCard(image: 'assets/images/pic3.png'),
                    CustomCard(image: 'assets/images/pic1.png'),
                    CustomCard(image: 'assets/images/pic2.png'),
                    CustomCard(image: 'assets/images/pic3.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Items(),
              ),
              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomCard(image: 'assets/images/pic3.png'),
                          CustomCard(image: 'assets/images/pic1.png'),
                          CustomCard(image: 'assets/images/pic2.png'),
                          CustomCard(image: 'assets/images/pic3.png'),
                          CustomCard(image: 'assets/images/pic3.png'),
                          CustomCard(image: 'assets/images/pic3.png'),
                        ],
                      ),
                      Row(
                        children: [
                          CustomCard(image: 'assets/images/pic3.png'),
                          CustomCard(image: 'assets/images/pic1.png'),
                          CustomCard(image: 'assets/images/pic2.png'),
                          CustomCard(image: 'assets/images/pic3.png'),
                          CustomCard(image: 'assets/images/pic3.png'),
                          CustomCard(image: 'assets/images/pic3.png'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
