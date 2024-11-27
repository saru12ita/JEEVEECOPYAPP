import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jeeveeapp/Authentication/signup.dart';

// Define MyApp widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(), // Your main screen widget
    );
  }
}

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title "JeeVee" is present in the AppBar.
    expect(find.text('JeeVee'), findsOneWidget);

    // Verify that the search bar is present.
    expect(find.byType(TextField), findsOneWidget);

    // Verify that the bottom navigation bar contains the "Categories" label.
    expect(find.text('Categories'), findsOneWidget);
  });
}
