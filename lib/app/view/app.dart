import 'package:flutter/material.dart';
import 'package:very_good_coffee/favorites/favorites_widget.dart';
import 'package:very_good_coffee/home/presentation/home_widget.dart';
import 'package:very_good_coffee/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const AppTabsPage(),
      );
}

class AppTabsPage extends StatelessWidget {
  const AppTabsPage({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Text('Home')),
                Tab(icon: Text('Favorites')),
              ],
            ),
            title: const Text('Very Good Coffee'),
          ),
          body: const TabBarView(
            children: [
              HomeWidget(),
              FavoritesWidget(),
            ],
          ),
        ),
      );
}

bool tappedFavorite = false;
bool tappedNext = false;
