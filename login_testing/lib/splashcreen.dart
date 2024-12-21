import 'package:flutter/material.dart';
import 'package:login_testing/dashboard.dart';
import 'package:login_testing/login.dart';
import 'package:login_testing/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class Splashcreen extends StatelessWidget {
  const Splashcreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<AuthProvider>(context, listen: false).tryAutoLogin(),
      builder: (ctx, authResult) {
        if (authResult.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else {
          final isAuthenticated =
              Provider.of<AuthProvider>(context, listen: false).isAuthenticated;
          return isAuthenticated
              ? const DashboardScreen()
              : const LoginScreen();
        }
      },
    );
  }
}
