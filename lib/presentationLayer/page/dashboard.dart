import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../dataLayer/cubit/app_cubit.dart';
import '../../dataLayer/cubit/app_state.dart';
import '../widget/card.dart';
import '../widget/header.dart';
import '../widget/profile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            primary: false,
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Header(),

                Divider(thickness: 0.5, indent: 0.5),
                const SizedBox(height: 50),

                Items(),
                const SizedBox(height: 50),
                // Example usage in your app:
                TripCardOption24(),
              ],
            ),
          ),
        );
      },
    );
  }
}
