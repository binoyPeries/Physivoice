import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:physivoice/routes.dart';
import 'package:physivoice/theme.dart';
import 'package:physivoice/ui/common/router_error_page.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(PhysivoiceApp());
}

class PhysivoiceApp extends StatelessWidget {
  PhysivoiceApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    initialLocation: '/',
    routes: PhysivoiceRoutes.routes,
    errorBuilder: (_, __) => const RouterErrorPage(),
  );

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        title: "Physivoice",
        debugShowCheckedModeBanner: false,
        theme: PhysivoiceTheme.theme,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: S.delegate.supportedLocales,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
        routerDelegate: _router.routerDelegate,
      ),
    );
  }
}
