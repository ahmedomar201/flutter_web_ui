import 'package:flutter/material.dart';

import '../../core/utils/responsive.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        // ProfileCard(),
      ],
    );
  }
}

// class ProfileCard extends StatefulWidget {
//   const ProfileCard({Key? key}) : super(key: key);

//   @override
//   State<ProfileCard> createState() => _ProfileCardState();
// }

// class _ProfileCardState extends State<ProfileCard> {

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 5),
//       padding: EdgeInsets.symmetric(
//         horizontal: 5,
//         vertical: 16.0 / 2,
//       ),
//       decoration: BoxDecoration(
//         // color: secondaryColor,
//         borderRadius: const BorderRadius.all(Radius.circular(10)),
//         border: Border.all(color: Colors.white10),
//       ),
//       child: Row(
//         children: [
//           Image.asset("assets/images/profile_pic.png", height: 25),
//           // if (!Responsive.isMobile(context))
//           // Padding(
//           //   padding: const EdgeInsets.symmetric(horizontal: 5),
//           //   child: Text(cubit.profileJwt!.uniqueName!),
//           // ),
//           if (!Responsive.isMobile(context))
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 16.0 / 2,
//               ),
//               // child: Text(
//               //   cubitLogin.profileJwt == null
//               //       ? prefs.read('unique_name')
//               //       : cubitLogin.profileJwt!.uniqueName!,
//               // ),
//             ),
//           PopupMenuButton(
//             itemBuilder: (BuildContext context) {
//               return [PopupMenuItem(child: Text('Log Out'), value: 1)];
//             },
//             onSelected: (value) {
 
//             },
//             icon: Icon(Icons.arrow_drop_down),
//           ),
//         ],
//       ),
//     );
//   }
// }
