import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_helloapp/app_routes.dart';
import 'package:flutter_helloapp/theme/colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: black.withOpacity(0.15),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.account_balance_wallet,
                  size: 70,
                  color: primary,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Budget Tracker',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Quản lý chi tiêu đơn giản và trực quan',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
