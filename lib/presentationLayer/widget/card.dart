import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_ui/core/utils/responsive.dart';

class CustomCard extends StatelessWidget {
  final String image;

  const CustomCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context) || Responsive.isTablet(context)) {
      double screenHeight = MediaQuery.of(context).size.height;
      return ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
        child: SizedBox(
          height: screenHeight * 0.5, // Adjust height to 50% of screen height
          width: 290,
          child: Card(
            elevation: 0,
            color: const Color(0xFF171717),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    // Background Image with Blur Effect
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        topLeft: Radius.circular(12),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          image,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Top-right Button Icon
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icons/Buttons.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),

                    // Status Chip
                    Positioned(
                      bottom: 0,
                      left: 16,
                      child: Container(
                        width: 165,
                        height: 35,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0x19C25F30),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: const Color(0xFFC25F30),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Pending Approval',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/icons/chevron-down.svg',
                              width: 16,
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Title
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Item title',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                const SizedBox(height: 6),

                // Date Range
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/calendar.svg'),
                      const SizedBox(width: 6),
                      const Text(
                        '5 Nights (Jan 16 - Jan 20, 2024)',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),
                const Divider(color: Color(0xFF262626), height: 1),
                const SizedBox(height: 16),

                // Footer with avatars and tasks
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Avatars
                      Row(
                        children: [
                          SizedBox(
                            width: 72,
                            height: 24,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  left: 0,
                                  child: buildAvatar(
                                    'assets/images/profile.png',
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  child: buildAvatar(
                                    'assets/images/profile1.png',
                                  ),
                                ),
                                Positioned(
                                  left: 32,
                                  child: buildAvatar(
                                    'assets/images/profile2.png',
                                  ),
                                ),
                                Positioned(
                                  left: 48,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF262626),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '+6',
                                        style: TextStyle(
                                          color: Color(0xFFFFC268),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // Tasks
                      const Text(
                        '4 unfinished tasks',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
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
    } else {
      return ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
        child: SizedBox(
          height: 400,
          width: 290,
          child: Card(
            elevation: 0,
            color: const Color(0xFF171717),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    // Background Image
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        topLeft: Radius.circular(12),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          image,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Top-right Button Icon
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icons/Buttons.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),

                    // Status Chip
                    Padding(
                      padding: const EdgeInsets.only(top: 180.0, left: 16.0),
                      child: Container(
                        width: 165,
                        height: 35,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0x19C25F30),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: const Color(0xFFC25F30),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Pending Approval',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/icons/chevron-down.svg',
                              width: 16,
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Title
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Item title',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                const SizedBox(height: 6),

                // Date Range
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/calendar.svg'),
                      const SizedBox(width: 6),
                      const Text(
                        '5 Nights (Jan 16 - Jan 20, 2024)',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),
                const Divider(color: Color(0xFF262626), height: 1),
                const SizedBox(height: 16),

                // Footer with avatars and tasks
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Avatars
                      Row(
                        children: [
                          SizedBox(
                            width: 72,
                            height: 24,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  left: 0,
                                  child: buildAvatar(
                                    'assets/images/profile.png',
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  child: buildAvatar(
                                    'assets/images/profile1.png',
                                  ),
                                ),
                                Positioned(
                                  left: 32,
                                  child: buildAvatar(
                                    'assets/images/profile2.png',
                                  ),
                                ),
                                Positioned(
                                  left: 48,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF262626),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '+6',
                                        style: TextStyle(
                                          color: Color(0xFFFFC268),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // Tasks
                      const Text(
                        '4 unfinished tasks',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
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

  Widget buildAvatar(String imageUrl) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFF262626), width: 0.6),
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}
