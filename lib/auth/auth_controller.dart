import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood_journal_app/pages/home/home.dart';
import 'package:mood_journal_app/pages/login/login.dart';
import 'package:mood_journal_app/services/appwrite_service.dart';

class AuthController extends GetxController {
  //* Init Methods
  @override
  void onInit() {
    super.onInit();
    getCurrentUser();
  }

  //* ----------------- SIGN UP -------------------------------

  //* Text Editing Controllers and Form Key
  final nameTextEditingController = TextEditingController();
  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();
  final confirmPasswordTextEditingController = TextEditingController();

  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  RxBool isLoading = false.obs;
  Rx<User?> currentUser = Rx<User?>(null);

  void resetControllers() {
    nameTextEditingController.clear();
    emailTextEditingController.clear();
    passwordTextEditingController.clear();
    confirmPasswordTextEditingController.clear();
  }

  Future<void> registerUser() async {
    final email = emailTextEditingController.text;
    final password = passwordTextEditingController.text;

    isLoading.value = true;
    try {
      await AppwriteClientService().account.create(
          userId: ID.unique(),
          email: email,
          password: password,
          name: nameTextEditingController.text);
      await login();
      log("User registered successfully !!");
      resetControllers();
    } catch (e) {
      Get.snackbar("Some error occurred !!", "Could not register you");
    }
    isLoading.value = false;
  }

  //* ------------------------------ LOGIN --------------------------------------
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  Future<void> login() async {
    isLoading.value = true;
    try {
      await AppwriteClientService().account.createEmailPasswordSession(
          email: emailTextEditingController.text,
          password: passwordTextEditingController.text);
      getCurrentUser();
      resetControllers();
      Get.offAll(() => HomeScreen());
    } catch (e) {
      Get.snackbar("Some error occurred !!", "Could not log you in");
    }
    isLoading.value = false;
  }

  //* Get Current user
  Future<void> getCurrentUser() async {
    try {
      currentUser.value = await AppwriteClientService().account.get();
    } catch (e) {
      currentUser.value = null; // No active session
    }
  }

  //* ---------------------------- LOGOUT ------------------------------
  Future<void> logoutUser() async {
    try {
      await AppwriteClientService().account.deleteSession(sessionId: 'current');
      currentUser.value = null;
      Get.offAll(() => LoginPage());
    } catch (e) {
      Get.snackbar("Some error occurred !!", "Could not log you out");
    }
  }
}
