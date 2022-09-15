import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:physivoice/routes.dart';
import 'package:physivoice/ui/constants/assets.dart';
import 'package:physivoice/ui/constants/colors.dart';

import '../components/default_elevated_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
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
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  PhysivoiceImageAssets.physivoiceLogo,
                ),
                //TODO: common text widget
                const Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 24,
                    color: PhysivoiceColors.secondaryColor,
                  ),
                ),
                const Text(
                  " Please select your role.",
                  style: TextStyle(
                    fontSize: 24,
                    color: PhysivoiceColors.secondaryColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultElevatedButton(
                  text: "Doctor",
                  onPressed: () => context.push(PhysivoiceRoutes.userLogin),
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultElevatedButton(
                  text: "Patient",
                  onPressed: () => context.push(PhysivoiceRoutes.userLogin),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
