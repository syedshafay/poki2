import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poki/values/constant_colors.dart';

class ProfileHelper extends ChangeNotifier {
  Widget stats({required String value, required String title}) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
            color: ConstantColors.whiteColor.withOpacity(0.6),
          ),
        ),
      ],
    );
  }

  Widget editBtn({
    required BuildContext context,
    required Function onPressed,
  }) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        width: MediaQuery.of(context).size.width - 70,
        height: 40,
        decoration: BoxDecoration(
          color: ConstantColors.darkGrey,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            "Edit Profile",
            style: GoogleFonts.poppins(),
          ),
        ),
      ),
    );
  }

  Widget tab({required BuildContext context}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: ConstantColors.darkGrey,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(
            FontAwesomeIcons.bars,
          ),
          Icon(
            FontAwesomeIcons.solidHeart,
            color: ConstantColors.grey,
          ),
          Icon(
            FontAwesomeIcons.lock,
            color: ConstantColors.grey,
          ),
        ],
      ),
    );
  }

  Widget videos() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 200,
            decoration: const BoxDecoration(
              color: ConstantColors.whiteColor,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Container(
            height: 200,
            decoration: const BoxDecoration(
              color: ConstantColors.whiteColor,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Container(
            height: 200,
            decoration: const BoxDecoration(
              color: ConstantColors.whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
