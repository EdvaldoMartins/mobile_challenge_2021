import 'package:flutter/material.dart';
import 'package:mobile_challenge_2021/domain/core/i_navigation_service.dart';

class NavigationService extends INavigationService {
  NavigationService(GlobalKey<NavigatorState> navigator) : super(navigator);

  @override
  Future<dynamic> navigateToPushNamed(String routeName,
      {Object? arguments}) async {
    return await navigator.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  @override
  Future<dynamic> navigateToPushNamedAndRemoveUntil(String routeName) async {
    return await navigator.currentState!
        .pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false);
  }

  @override
  Future navigateToPop({Object? object}) async {
    return navigator.currentState!.pop(object);
  }
}
