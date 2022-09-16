import 'package:flutter/foundation.dart';
import "package:go_router/go_router.dart";
import 'package:physivoice/ui/common/pages/user_login_page.dart';
import 'package:physivoice/ui/common/pages/welcome_page.dart';
import 'package:physivoice/ui/constants/enums.dart';

abstract class PhysivoiceRoutes {
  //  path names
  static const String welcome = "/";
  static const String userLogin = "/login/:role";

  static List<GoRoute> get routes {
    return [
      ...commonRoutes,
      ...patientRoutes,
      ...doctorRoutes,
    ];
  }

  static UserRoles _getUserRole(GoRouterState state) {
    String role = state.params["role"] as String;
    return UserRoles.values.firstWhere((e) => describeEnum(e) == role);
  }

  static List<GoRoute> get commonRoutes {
    return [
      GoRoute(path: welcome, builder: (_, __) => const WelcomePage()),
      GoRoute(
          path: userLogin,
          builder: (_, state) => UserLoginPage(role: _getUserRole(state))),
    ];
  }

  static List<GoRoute> get patientRoutes {
    return [];
  }

  static List<GoRoute> get doctorRoutes {
    return [];
  }

  static String userLoginPath(UserRoles role) {
    return userLogin.replaceFirst(":role", role.name.toString());
  }
}
