import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poki/values/constant_colors.dart';
import 'package:poki/views/profile/profile_helper.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.black,
      appBar: AppBar(
        backgroundColor: ConstantColors.black,
        centerTitle: true,
        title: Text(
          "John Doe",
          style: GoogleFonts.poppins(
            color: ConstantColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: ConstantColors.whiteColor,
              radius: 60,
            ),
            const SizedBox(height: 5),
            Text(
              "@johndoe",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Provider.of<ProfileHelper>(context, listen: false).stats(
                  value: "12",
                  title: "Following",
                ),
                Provider.of<ProfileHelper>(context, listen: false).stats(
                  value: "720",
                  title: "Followers",
                ),
                Provider.of<ProfileHelper>(context, listen: false).stats(
                  value: "112.2K",
                  title: "Likes",
                ),
              ],
            ),
            const SizedBox(height: 40),
            Provider.of<ProfileHelper>(context, listen: false).editBtn(
              context: context,
              onPressed: () {},
            ),
            const SizedBox(height: 40),
            Provider.of<ProfileHelper>(context, listen: false).tab(
              context: context,
            ),
            Column(
              children: [
                Provider.of<ProfileHelper>(context, listen: false).videos(),
                const SizedBox(height: 10),
                Provider.of<ProfileHelper>(context, listen: false).videos(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
