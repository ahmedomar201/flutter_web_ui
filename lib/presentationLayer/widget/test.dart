import 'package:flutter/material.dart';


class VoucherCard extends StatelessWidget {
  final String image;

  final String points;

  final String description;
  final double? hight;
  final double? width;

  VoucherCard({
    required this.image,
    required this.points,
    required this.description,
    this.hight,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
      ),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.38,
        width:MediaQuery.sizeOf(context).width * 0.45,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
                child: Container(
                  width: double.infinity,
                  child: Image.asset(image),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      description,

                      // textAlign: TextAlign.center,
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
                    Text(points),
                  ],
                ),
              ),
              // SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width:MediaQuery.sizeOf(context).width * 0.3,
                    height: 32,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0XFF7743DB)),
                      borderRadius: BorderRadius.circular(20.2),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text('Redeem'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class TripCardOption25 extends StatelessWidget {
  const TripCardOption25({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290,
      child: Card(
        elevation: 0,
        color: const Color(0xFF171717),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // الصورة العلوية
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                'assets/images/pic2.png',
                width: double.infinity,
                height: 160,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Status Chip - الجزء المعدل
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0x14C25F30),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: const Color(0xFFC25F30),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC25F30),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Pending Approval',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // باقي الكود كما هو...
                  const SizedBox(height: 16),
                  const Text(
                    'Item title',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Date Range
                  const Text(
                    '5 Nights (Jan 16 - Jan 20, 2024)',
                    style: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(height: 16),
                  const Divider(color: Color(0xFF262626), height: 1),
                  const SizedBox(height: 12),

                  // Footer with avatars and tasks
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Avatars Row
                      Row(
                        children: [
                          _buildAvatar('assets/images/profile1.png'),
                          const SizedBox(width: 8),
                          _buildAvatar('assets/images/profile2.png'),
                          const SizedBox(width: 8),
                          _buildAvatar('assets/images/profile3.png'),
                          const SizedBox(width: 8),
                          Container(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar(String imagePath) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFF262626), width: 0.6),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}