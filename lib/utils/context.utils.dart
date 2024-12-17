import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:map_demo/utils/router.utils.dart';

BuildContext? getContext(Ref ref) {
  return ref.read(routerPod).routerDelegate.navigatorKey.currentContext;
}
