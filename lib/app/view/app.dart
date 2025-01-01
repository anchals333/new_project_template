import 'package:flutter/material.dart';
import 'package:new_project/app/constants/string_constants.dart';
import 'package:new_project/app/l10n/l10n.dart';
import 'package:new_project/app/router/app_router.dart';
import 'package:new_project/app/router/custom_route_observer.dart';
import 'package:new_project/app/theme/dark/dark_theme.dart';
import 'package:new_project/app/theme/light/light_theme.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // App Name
      title: StringConstants.appName,

      // Theme
      theme: LightTheme().theme,
      darkTheme: DarkTheme().theme,

      // Localization
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // Routing
      routerConfig: _appRouter.config(
        navigatorObservers: () => [CustomRouteObserver()],
      ),
    );
  }
}
