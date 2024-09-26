import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
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
            actions: [
              IconButton(
                onPressed: () => debugPrint('hi'),
                icon: const Icon(Icons.favorite),
              ),
            ],
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

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(hardcodedUrl1),
        FadeInImage.memoryNetwork(
          image: hardcodedUrl1,
          placeholder: kTransparentImage,
          imageErrorBuilder: (context, error, stackTrace) => ColoredBox(
            color: Colors.red,
            child: Text(context.l10n.errorLoadingImage),
          ),
        ),
      ],
    );
  }
}

class FavoritesWidget extends StatelessWidget {
  const FavoritesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(context.l10n.noFavoritesMessage);
  }
}

bool tappedFavorite = false;
bool tappedNext = false;
String hardcodedUrl1 = 'https://coffee.alexflipnote.dev/n2umtTs_y80_coffee.jpg';
String hardcodedUrl2 = 'https://coffee.alexflipnote.dev/KwS5dWCe9gQ_coffee.jpg';
