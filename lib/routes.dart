import "package:go_router/go_router.dart";
import 'package:physivoice/ui/common/welcome_page.dart';

abstract class PhysivoiceRoutes {
  //  path names
  static const String example = "/";
  static const String welcomePage = "/";

  static List<GoRoute> get routes {
    return [
      ...commonRoutes,
      ...patientRoutes,
      ...doctorRoutes,
    ];
  }

  static List<GoRoute> get commonRoutes {
    return [
      //:TODO follow this format
      // GoRoute(path: example, builder: (_, __) => const CustomerListPage()),
      GoRoute(path: welcomePage, builder: (_, __) => const WelcomePage()),
    ];
  }

  static List<GoRoute> get patientRoutes {
    return [];
  }

  static List<GoRoute> get doctorRoutes {
    return [];
  }
}
