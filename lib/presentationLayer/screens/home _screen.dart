// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../core/utils/responsive.dart';
// import '../../dataLayer/cubit/app_cubit.dart';
// import '../../dataLayer/cubit/app_state.dart';


// class Dashboard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<AppBloc, AppState>(
//       builder: (context, state) {
//         return SafeArea(
//           child: SingleChildScrollView(
//             primary: false,
//             padding: EdgeInsets.all(16),
//             child: Column(
//               children: [
//                 // Header(),
//                 SizedBox(height: 16),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       flex: 5,
//                       child: Column(
//                         children: [
//                           // MyFiles(),
//                           SizedBox(height: 16),
//                           if (Responsive.isMobile(context))
//                             SizedBox(height: 16),
//                           if (Responsive.isMobile(context)) 
//                           SummaryWidget(),
//                         ],
//                       ),
//                     ),
//                     if (!Responsive.isMobile(context))
//                       SizedBox(width: 16),
//                     // On Mobile means if the screen is less than 850 we dont want to show it
//                     if (!Responsive.isMobile(context))
//                       Expanded(
//                         flex: 2,
//                         child: SummaryWidget(),
//                       ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
