import 'package:flutter/material.dart';
import 'injection_container.dart' as di;
import 'core/theme/app_theme.dart';
import 'features/dashboard/presentation/pages/dashboard_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const ChronosApp());
}

class ChronosApp extends StatelessWidget {
  const ChronosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chronos',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const DashboardPage(),
    );
  }
}