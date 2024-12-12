import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:projectpemmob/theme.dart';
import 'package:projectpemmob/controllers/auth_controller.dart';
=======
import 'package:projectpemmob/models/user_model.dart';
import 'package:projectpemmob/providers/auth_provider.dart';
import 'package:projectpemmob/theme.dart';
import 'package:provider/provider.dart';
>>>>>>> ce2e830 (frontend)

class EditProfilePage extends StatelessWidget {
  EditProfilePage({Key? key}) : super(key: key);

  final AuthController _userController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    header() {
      return AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
<<<<<<< HEAD
          style: primaryTextStyle,
=======
>>>>>>> ce2e830 (frontend)
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: primaryColor,
            ),
<<<<<<< HEAD
            onPressed: () {
              // Tambahkan aksi simpan di sini
            },
=======
            onPressed: () {},
>>>>>>> ce2e830 (frontend)
          )
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
<<<<<<< HEAD
            Obx(() => TextFormField(
                  initialValue: _userController.name.value,
                  style: primaryTextStyle,
                  decoration: InputDecoration(
                    hintText: 'Alex keinnzal',
                    hintStyle: primaryTextStyle,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: subtitleColor,
                      ),
                    ),
=======
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: user.name,
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
>>>>>>> ce2e830 (frontend)
                  ),
                  onChanged: (value) => _userController.name.value = value,
                )),
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
<<<<<<< HEAD
            Obx(() => TextFormField(
                  initialValue: _userController.username.value,
                  style: primaryTextStyle,
                  decoration: InputDecoration(
                    hintText: '@alexkeinn',
                    hintStyle: primaryTextStyle,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: subtitleColor,
                      ),
                    ),
=======
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: '@${user.username}',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
>>>>>>> ce2e830 (frontend)
                  ),
                  onChanged: (value) => _userController.username.value = value,
                )),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
<<<<<<< HEAD
            Obx(() => TextFormField(
                  initialValue: _userController.email.value,
                  style: primaryTextStyle,
                  decoration: InputDecoration(
                    hintText: 'alex.kein@gmail.com',
                    hintStyle: primaryTextStyle,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: subtitleColor,
                      ),
                    ),
=======
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: user.email,
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
>>>>>>> ce2e830 (frontend)
                  ),
                  onChanged: (value) => _userController.email.value = value,
                )),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    user.profilePhotoUrl,
                  ),
                ),
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
