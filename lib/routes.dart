import "package:go_router/go_router.dart";

abstract class PhysivoiceRoutes {
  //  path names
  static const String example = "/";

  static List<GoRoute> get commonRoutes {
    return [
      //:TODO follow this format
      // GoRoute(path: example, builder: (_, __) => const CustomerListPage()),
    ];
  }

  static List<GoRoute> get patientRoutes {
    return [];
  }

  static List<GoRoute> get doctorRoutes {
    return [];
  }
}
