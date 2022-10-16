import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:physivoice/routes.dart';
import 'package:physivoice/ui/constants/assets.dart';
import 'package:physivoice/ui/constants/colors.dart';
import 'package:physivoice/ui/constants/enums.dart';

import '../components/default_elevated_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.white,
                // PhysivoiceColors.tertiaryColor,
                // PhysivoiceColors.gradientCandidate2,
                // PhysivoiceColors.gradientCandidate1,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                PhysivoiceImageAssets.physivoiceLogo,
                height: 200.0,
                fit: BoxFit.contain,
              ),
              const Center(
                child: Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 24,
                    color: PhysivoiceColors.secondaryColor,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  " Please select your role.",
                  style: TextStyle(
                    fontSize: 24,
                    color: PhysivoiceColors.secondaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: DefaultElevatedButton(
                  text: "Doctor",
                  onPressed: () => context
                      .push(PhysivoiceRoutes.userLoginPath(UserRoles.doctor)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: DefaultElevatedButton(
                  text: "Patient",
                  onPressed: () => context
                      .push(PhysivoiceRoutes.userLoginPath(UserRoles.patient)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
