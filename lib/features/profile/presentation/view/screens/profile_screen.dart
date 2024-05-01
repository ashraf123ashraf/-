import 'package:fehres/core/helper/navigation_func.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/features/profile/presentation/view/widgets/noAuth_body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return NoAuthBody(
      signin: () => namedRoute(
        context,
        RoutesName.loginscreen,
      ),
      signup: () => namedRoute(
        context,
        RoutesName.signupscreen,
      ),
    );
  }
}
