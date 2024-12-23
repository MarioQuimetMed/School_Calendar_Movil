import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_calendar/provider/auth_provider.dart';
import 'package:school_calendar/views/home_screen.dart';
import 'package:school_calendar/views/login_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // Configurar nombres de rutas
        routes: {
          '/menu': (context) => HomeScreen(),
          '/login': (context) => LoginScreen(),
        },
        home: LoginScreen(),
      ),
    );
  }
}
