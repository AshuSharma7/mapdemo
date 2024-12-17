// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $loginPageRoute,
      $signUpPageRoute,
      $createProfilePageRoute,
      $loginPhonePageRoute,
      $verifyOtpPageRoute,
      $loginOptionsRoute,
      $profilePageRoute,
    ];

RouteBase get $loginPageRoute => GoRouteData.$route(
      path: '/login_page',
      factory: $LoginPageRouteExtension._fromState,
    );

extension $LoginPageRouteExtension on LoginPageRoute {
  static LoginPageRoute _fromState(GoRouterState state) =>
      const LoginPageRoute();

  String get location => GoRouteData.$location(
        '/login_page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpPageRoute => GoRouteData.$route(
      path: '/signup_page',
      factory: $SignUpPageRouteExtension._fromState,
    );

extension $SignUpPageRouteExtension on SignUpPageRoute {
  static SignUpPageRoute _fromState(GoRouterState state) =>
      const SignUpPageRoute();

  String get location => GoRouteData.$location(
        '/signup_page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $createProfilePageRoute => GoRouteData.$route(
      path: '/create_profile',
      factory: $CreateProfilePageRouteExtension._fromState,
    );

extension $CreateProfilePageRouteExtension on CreateProfilePageRoute {
  static CreateProfilePageRoute _fromState(GoRouterState state) =>
      CreateProfilePageRoute(
        isEdit: _$convertMapValue(
                'is-edit', state.uri.queryParameters, _$boolConverter) ??
            false,
      );

  String get location => GoRouteData.$location(
        '/create_profile',
        queryParams: {
          if (isEdit != false) 'is-edit': isEdit.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}

RouteBase get $loginPhonePageRoute => GoRouteData.$route(
      path: '/login_phone',
      factory: $LoginPhonePageRouteExtension._fromState,
    );

extension $LoginPhonePageRouteExtension on LoginPhonePageRoute {
  static LoginPhonePageRoute _fromState(GoRouterState state) =>
      const LoginPhonePageRoute();

  String get location => GoRouteData.$location(
        '/login_phone',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $verifyOtpPageRoute => GoRouteData.$route(
      path: '/verify_otp',
      factory: $VerifyOtpPageRouteExtension._fromState,
    );

extension $VerifyOtpPageRouteExtension on VerifyOtpPageRoute {
  static VerifyOtpPageRoute _fromState(GoRouterState state) =>
      VerifyOtpPageRoute(
        verificationId: state.uri.queryParameters['verification-id']!,
      );

  String get location => GoRouteData.$location(
        '/verify_otp',
        queryParams: {
          'verification-id': verificationId,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginOptionsRoute => GoRouteData.$route(
      path: '/login_options',
      factory: $LoginOptionsRouteExtension._fromState,
    );

extension $LoginOptionsRouteExtension on LoginOptionsRoute {
  static LoginOptionsRoute _fromState(GoRouterState state) =>
      const LoginOptionsRoute();

  String get location => GoRouteData.$location(
        '/login_options',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $profilePageRoute => GoRouteData.$route(
      path: '/profile_page',
      factory: $ProfilePageRouteExtension._fromState,
    );

extension $ProfilePageRouteExtension on ProfilePageRoute {
  static ProfilePageRoute _fromState(GoRouterState state) =>
      const ProfilePageRoute();

  String get location => GoRouteData.$location(
        '/profile_page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
