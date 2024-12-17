import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:map_demo/pages/login/login.page.dart';
import 'package:map_demo/pages/login_options/login_options.page.dart';
import 'package:map_demo/pages/login_phone/login_phone.page.dart';
import 'package:map_demo/pages/login_phone/verify_otp.page.dart';
import 'package:map_demo/pages/profile/create_profile/create_profile.page.dart';
import 'package:map_demo/pages/profile/profile.page.dart';
import 'package:map_demo/pages/sign_up/sign_up.page.dart';

part 'app_routes.g.dart';

@TypedGoRoute<LoginPageRoute>(path: '/login_page')
class LoginPageRoute extends GoRouteData {
  const LoginPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}

@TypedGoRoute<SignUpPageRoute>(path: '/signup_page')
class SignUpPageRoute extends GoRouteData {
  const SignUpPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SignUpPage();
}

@TypedGoRoute<CreateProfilePageRoute>(path: '/create_profile')
class CreateProfilePageRoute extends GoRouteData {
  final bool isEdit;
  const CreateProfilePageRoute({ this.isEdit = false});

  @override
  Widget build(BuildContext context, GoRouterState state) =>  CreateProfilePage(
    isEdit: isEdit,
  );
}

@TypedGoRoute<LoginPhonePageRoute>(path: '/login_phone')
class LoginPhonePageRoute extends GoRouteData {
  const LoginPhonePageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPhonePage();
}

@TypedGoRoute<VerifyOtpPageRoute>(path: '/verify_otp')
class VerifyOtpPageRoute extends GoRouteData {
  final String verificationId;
  const VerifyOtpPageRoute({required this.verificationId,});

  @override
  Widget build(BuildContext context, GoRouterState state) =>  VerifyOtpPage(verificationId: verificationId,);
}

@TypedGoRoute<LoginOptionsRoute>(path: '/login_options')
class LoginOptionsRoute extends GoRouteData {
  const LoginOptionsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginOptions();
}

@TypedGoRoute<ProfilePageRoute>(path: '/profile_page')
class ProfilePageRoute extends GoRouteData {
  const ProfilePageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const ProfilePage();
}