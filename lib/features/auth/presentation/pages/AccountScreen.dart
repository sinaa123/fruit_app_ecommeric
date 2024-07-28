import 'package:flutter/material.dart';
import 'package:fruit_app/features/auth/widgets/CustomAccountScreenWidget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAccountScreenWidget(),
    );
  }
}
