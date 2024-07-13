import 'package:flutter/material.dart';
import 'package:route_task/presentation/screens/home_screen.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  runApp(const RouteTask());
}

class RouteTask extends StatelessWidget {
  const RouteTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
