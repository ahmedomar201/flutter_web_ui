import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: 76,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/icons/logo.svg', width: 82, height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NavItem(text: 'Items'),
                  NavItem(text: 'Pricing'),
                  NavItem(text: 'Info'),
                  NavItem(text: 'Tasks'),
                  NavItem(text: 'Analytics'),
                  Container(
                    height: 22,
                    width: 1,
                    color: const Color(0xFF262626),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  SvgPicture.asset(
                    'assets/icons/notification.svg',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 20),

                  SvgPicture.asset(
                    'assets/icons/setting.svg',
                    width: 24,
                    height: 24,
                  ),

                  Container(
                    height: 22,
                    width: 1,
                    color: const Color(0xFF262626),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/profile.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'John Doe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 4),
                  SvgPicture.asset(
                    'assets/icons/chevron-down.svg',
                    width: 16,
                    height: 16,
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

class NavItem extends StatelessWidget {
  final String text;

  const NavItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF999999),
          fontSize: 14,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
