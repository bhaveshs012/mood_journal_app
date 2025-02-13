import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood_journal_app/services/appwrite_service.dart';

class AuthController extends GetxController {
  //* Sign Up

  //* Text Editing Controllers and Form Key
  final nameTextEditingController = TextEditingController();
  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();
  final confirmPasswordTextEditingController = TextEditingController();

  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> registerUser() async {
    //* Performing
    final email = emailTextEditingController.text;
    final password = passwordTextEditingController.text;

    await AppwriteClientService()
        .account
        .create(userId: ID.unique(), email: email, password: password);
    await login(email, password);
  }

  //* Login

  Future<void> login(String email, String password) async {
    await AppwriteClientService()
        .account
        .createEmailPasswordSession(email: email, password: password);
  }
}
