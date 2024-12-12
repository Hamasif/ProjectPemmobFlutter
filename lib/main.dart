import 'package:flutter/material.dart';
import 'package:projectpemmob/controllers/auth_controller.dart';
import 'package:projectpemmob/pages/cart_page.dart';
import 'package:projectpemmob/pages/checkout_page.dart';
import 'package:projectpemmob/pages/checkout_succes_page.dart';
import 'package:projectpemmob/pages/detail_chat_page.dart';
import 'package:projectpemmob/pages/edit_profile_page.dart';
import 'package:projectpemmob/pages/home/main_page.dart';
import 'package:projectpemmob/pages/product_page.dart';
import 'package:projectpemmob/pages/sign_in_page.dart';
import 'package:projectpemmob/pages/sign_up_page.dart';
import 'package:projectpemmob/pages/splash_page.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashPage()),
        GetPage(name: '/sign-in', page: () => SignInPage()),
        GetPage(name: '/sign-up', page: () => SignUpPage()),
        GetPage(name: '/home', page: () => MainPage()),
        GetPage(name: '/detail-chat', page: () => DetailChatPage()),
        GetPage(name: '/edit-profile', page: () => EditProfilePage()),
        GetPage(name: '/product', page: () => ProductPage()),
        GetPage(name: '/cart', page: () => CartPage()),
        GetPage(name: '/checkout', page: () => CheckoutPage()),
        GetPage(name: '/checkout-success', page: () => ChcekoutSuccessPage()),
      ],
    );
  }
}
