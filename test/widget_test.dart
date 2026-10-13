import 'package:flutter_test/flutter_test.dart';

import 'package:boardmap/app.dart';
import 'package:boardmap/widgets/app_button.dart';
import 'package:boardmap/widgets/app_nav_link.dart';

void main() {
  testWidgets('home screen shows hero and nav, opens the login screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(const BoardmapApp());

    expect(find.text('Boardmap'), findsWidgets);
    expect(find.text('Find and explore places on the map.'), findsOneWidget);
    expect(find.widgetWithText(AppButton, 'Open Map'), findsOneWidget);
    expect(find.text('Explore Map'), findsOneWidget);
    expect(find.text('Saved Places'), findsOneWidget);
    expect(find.text('Get Directions'), findsOneWidget);
    expect(find.text('© 2026 Boardmap'), findsOneWidget);

    await tester.tap(find.widgetWithText(AppNavLink, 'Login'));
    await tester.pumpAndSettle();

    expect(find.text('Sign in to continue'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.widgetWithText(AppButton, 'Login'), findsOneWidget);
    expect(find.text('Boardmap • IT 110 Semester Project'), findsOneWidget);

    await tester.tap(find.widgetWithText(AppButton, 'Login'));
    await tester.pump();

    expect(
      find.text(
        'Sign-in will be wired to the REST API in a later activity.',
      ),
      findsOneWidget,
    );
  });
}
