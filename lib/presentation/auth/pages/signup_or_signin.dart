import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/config/assets/app_images.dart';
import 'package:spotify/core/config/assets/app_vector.dart';
import 'package:spotify/presentation/auth/pages/signup.dart';

import '../../../core/config/theme/app_colors.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppBar(),
          Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(AppVectors.topPattern)),
          Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(AppVectors.bottomPattern)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(AppImages.authBG)),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppVectors.logo),
                    const SizedBox(
                      height: 55,
                    ),
                    const Text(
                      'Enjoy Listening To Music',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        // color: Colors.white
                      ),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    const Text(
                      'Spotify is a proprietary Swedish audio streaming and media services provider ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: AppColors.grey),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: BasicAppButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const SignupPage()));
                                },
                                title: 'Register')),
                        const SizedBox(
                          width: 20,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('Sign in',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: context.isDarkMode
                                        ? Colors.white
                                        : Colors.black)))
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
