import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TripCardOption24 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFF171717),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          height: 322,
          width: 243.25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Status Chip
              Container(
                width: 156,
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

              const SizedBox(height: 16),

              // Title
              const Text(
                'Item title',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),

              const SizedBox(height: 6),

              // Date Range
              Row(
                children: [
                  const Icon(
                    Icons.calendar_today,
                    size: 16,
                    color: Color(0xFF999999),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Jan 16 - Jan 20, 2024',
                    style: TextStyle(
                      color: const Color(0xFF999999),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),
              const Divider(color: Color(0xFF262626), height: 1),
              const SizedBox(height: 8),

              // Footer with avatars and tasks
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Avatars
                  Row(
                    children: [
                      _buildAvatar('https://placehold.co/24x24'),
                      const SizedBox(width: 8),
                      _buildAvatar('https://placehold.co/24x24'),
                      const SizedBox(width: 8),
                      _buildAvatar('https://placehold.co/24x24'),
                      const SizedBox(width: 8),
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          color: Color(0xFF262626),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '+6',
                            style: TextStyle(
                              color: const Color(0xFFFFC268),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Tasks
                  Text(
                    '4 unfinished tasks',
                    style: TextStyle(
                      color: const Color(0xFF999999),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvatar(String imageUrl) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFF262626), width: 0.6),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
