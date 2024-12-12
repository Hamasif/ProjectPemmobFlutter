import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:projectpemmob/theme.dart';
import 'package:projectpemmob/controllers/auth_controller.dart';
=======
import 'package:projectpemmob/models/user_model.dart';
import 'package:projectpemmob/providers/auth_provider.dart';
import 'package:provider/provider.dart';


import '../../theme.dart';
>>>>>>> ce2e830 (frontend)

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final AuthController _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(
              defaultMargin,
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.network(
                    user.profilePhotoUrl,
                    width: 64,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
<<<<<<< HEAD
                      Obx(() => Text(
                            'Halo, ${_authController.name.value.isEmpty ? "Guest" : _authController.name.value}',
                            style: primaryTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                          )),
                      Obx(() => Text(
                            _authController.email.value.isEmpty
                                ? 'Email not available'
                                : _authController.email.value,
                            style: subtitleTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          )),
=======
                      Text(
                        'Hallo, ${user.name}',
                        style: primaryTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '@${user.username}',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
>>>>>>> ce2e830 (frontend)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _authController.logout();
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-in', (route) => false);
                  },
                  child: Image.asset(
                    'assets/button_exit.png',
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

<<<<<<< HEAD
    Widget menuItem(String text, {VoidCallback? onTap}) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(
            top: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: primaryTextColor,
              ),
            ],
          ),
=======
    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryTextStyle.copyWith(fontSize: 13),
            ),
            Icon(
              Icons.chevron_right,
              color: primaryTextColor,
            ),
          ],
>>>>>>> ce2e830 (frontend)
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: backgroundColor3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Account',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              menuItem(
                'Edit Profile',
                onTap: () {
<<<<<<< HEAD
                  Navigator.pushNamed(
                    context,
                    '/edit-profile',
                  );
=======
                  Navigator.pushNamed(context, '/edit-profile');
>>>>>>> ce2e830 (frontend)
                },
              ),
              menuItem(
                'Your Orders',
              ),
              menuItem(
                'Help',
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'General',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              menuItem(
                'Privacy & Policy',
              ),
              menuItem(
                'Term of Service',
              ),
              menuItem(
                'Rate App',
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
