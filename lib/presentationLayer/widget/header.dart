import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/utils/responsive.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context) || Responsive.isTablet(context)) {
      return Material(
        child: Container(
          width: double.infinity,
          height: 76,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Builder(
                      builder:
                          (context) => IconButton(
                            icon: const Icon(Icons.menu, color: Colors.white),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                    ),

                    // Logo
                    SvgPicture.asset(
                      'assets/icons/logo.svg',
                      width: 82,
                      height: 40,
                    ),
                  ],
                ),
                // Drawer Icon

                // Right-side Icons and Profile
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/setting.svg',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 16),

                    SvgPicture.asset(
                      'assets/icons/notification.svg',
                      width: 24,
                      height: 24,
                    ),

                    // const SizedBox(width: 16),
                    Container(
                      height: 22,
                      width: 1,
                      color: const Color(0xFF262626),
                      margin: const EdgeInsets.symmetric(horizontal: 16),
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
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Material(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 76,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Logo
                    SvgPicture.asset(
                      'assets/icons/logo.svg',
                      width: 82,
                      height: 40,
                    ),

                    // Navigation Items and User Profile
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NavItem(
                          text: 'Items',
                          isSelected: selectedIndex == 0,
                          onTap: () => setState(() => selectedIndex = 0),
                        ),
                        NavItem(
                          text: 'Pricing',
                          isSelected: selectedIndex == 1,
                          onTap: () => setState(() => selectedIndex = 1),
                        ),
                        NavItem(
                          text: 'Info',
                          isSelected: selectedIndex == 2,
                          onTap: () => setState(() => selectedIndex = 2),
                        ),
                        NavItem(
                          text: 'Tasks',
                          isSelected: selectedIndex == 3,
                          onTap: () => setState(() => selectedIndex = 3),
                        ),
                        NavItem(
                          text: 'Analytics',
                          isSelected: selectedIndex == 4,
                          onTap: () => setState(() => selectedIndex = 4),
                        ),

                        Container(
                          height: 22,
                          width: 1,
                          color: const Color(0xFF262626),
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                        ),

                        SvgPicture.asset(
                          'assets/icons/setting.svg',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 20),
                        SvgPicture.asset(
                          'assets/icons/notification.svg',
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
            Container(
              color: Colors.black,

              child: Divider(color: const Color(0xFF262626)),
            ),
          ],
        ),
      );
    }
  }
}

class NavItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback? onTap;

  const NavItem({
    Key? key,
    required this.text,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : const Color(0xFF999999),
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
