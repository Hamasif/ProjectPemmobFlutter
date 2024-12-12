import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectpemmob/theme.dart';
import 'package:projectpemmob/controllers/auth_controller.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({Key? key}) : super(key: key);

  final AuthController _userController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: primaryTextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: primaryTextStyle,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: primaryColor,
            ),
            onPressed: () {
              // Tambahkan aksi simpan di sini
            },
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
                      image: AssetImage('assets/image_profile.png'))),
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
