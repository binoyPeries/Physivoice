import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:physivoice/routes.dart';
import 'package:physivoice/ui/constants/colors.dart';

import 'components/common_button.dart';

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
                  "assets/images/logo.png",
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
                CommonButton(
                  width: 200,
                  height: 50,
                  fontSize: 18,
                  text: "Doctor",
                  textColor: Colors.white,
                  onPressed: () => context.push(PhysivoiceRoutes.userLogin),
                  buttonColor: PhysivoiceColors.primaryColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                CommonButton(
                  width: 200,
                  height: 50,
                  fontSize: 18,
                  text: "Patient",
                  textColor: Colors.white,
                  onPressed: () => context.push(PhysivoiceRoutes.userLogin),
                  buttonColor: PhysivoiceColors.primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
