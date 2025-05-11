import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween, // توزيع العناصر بين بداية ونهاية الصف
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Items',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        Row(
          children: [
            Container(
              width: 48,
              height: 50,
              decoration: ShapeDecoration(
                color: const Color(0xFF171717),
                shape: OvalBorder(),
              ),
              child: SvgPicture.asset(
                'assets/icons/Vector.svg',
                width: 30,
                height: 30,
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              height: 55,
              width: 1,
              color: const Color(0xFF262626),
              margin: const EdgeInsets.symmetric(horizontal: 20),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 48,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFC268),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.add, color: Colors.black, size: 24),
                      Text(
                        'Add a New Item',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 1.29,
                          letterSpacing: -0.42,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
