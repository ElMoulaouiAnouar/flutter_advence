import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/app_colors.dart';
import '../../../core/styles.dart';

class BtnGetStarted extends StatelessWidget {
  const BtnGetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 57,
        decoration: BoxDecoration(
            color: AppColor.primaryBlue,
            borderRadius: BorderRadius.circular(20)),
        child: TextButton(
          child: Text(
            "Get Started",
            style: Styles.font23White400Weight,
          ),
          onPressed: () => {},
        ));
  }
}
