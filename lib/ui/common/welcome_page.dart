import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
              PhysivoiceColors.tertiaryColor,
              PhysivoiceColors.gradientCandidate2,
              PhysivoiceColors.gradientCandidate1,
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
                //TODO: common text widget
                const Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  " Please select your role.",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
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
                  onPressed: () => context.push("/login"),
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
                  onPressed: () => context.push("/login"),
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
