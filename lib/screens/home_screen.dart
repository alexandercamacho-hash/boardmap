import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_constants.dart';
import '../routes/app_routes.dart';
import '../widgets/app_button.dart';
import '../widgets/app_nav_link.dart';
import '../widgets/feature_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showPlaceholder(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          behavior: SnackBarBehavior.floating,
        ),
      );
  }

  void _goToLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appTitle),
        actions: [
          AppNavLink(
            label: 'Home',
            active: true,
            onPressed: () => Navigator.pushNamed(context, AppRoutes.home),
          ),
          AppNavLink(
            label: 'Map',
            onPressed: () => _showPlaceholder(
              context,
              'Map screen is planned for the next activity.',
            ),
          ),
          AppNavLink(
            label: 'About',
            onPressed: () => _showPlaceholder(
              context,
              'About page is planned for the next activity.',
            ),
          ),
          AppNavLink(
            label: 'Login',
            onPressed: () => _goToLogin(context),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 960),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 48, 24, 24),
              child: Column(
                children: [
                  const Text(
                    AppConstants.appTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48,
                      height: 1.1,
                      fontWeight: FontWeight.w800,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    AppConstants.appTagline,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.mutedText,
                    ),
                  ),
                  const SizedBox(height: 28),
                  AppButton(
                    label: 'Open Map',
                    icon: Icons.map_outlined,
                    onPressed: () => _showPlaceholder(
                      context,
                      'Map screen is planned for the next activity.',
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Divider(),
                  const SizedBox(height: 32),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final List<Widget> cards = const <Widget>[
                        FeatureCard(
                          title: 'Explore Map',
                          description: 'Discover new places around you.',
                        ),
                        FeatureCard(
                          title: 'Saved Places',
                          description:
                              'Keep track of your favorite locations.',
                        ),
                        FeatureCard(
                          title: 'Get Directions',
                          description:
                              'Find the best route to your destination.',
                        ),
                      ];

                      if (constraints.maxWidth >= 720) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(child: cards[0]),
                            const SizedBox(width: 16),
                            Expanded(child: cards[1]),
                            const SizedBox(width: 16),
                            Expanded(child: cards[2]),
                          ],
                        );
                      }

                      return Column(
                        children: <Widget>[
                          cards[0],
                          const SizedBox(height: 16),
                          cards[1],
                          const SizedBox(height: 16),
                          cards[2],
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 40),
                  const Divider(),
                  const SizedBox(height: 20),
                  const Text(
                    AppConstants.footerText,
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.mutedText,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
