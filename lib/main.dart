import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/auth/domain/auth_provider.dart';
import 'features/auth/presentation/screens/login_screen.dart';
import 'core/theme/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        localizationsDelegates: [
          // Yerelleştirme delegeleri
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', ''), // İngilizce
          const Locale('tr', ''), // Türkçe
          // Diğer diller
        ],
        home: LoginScreen(),
      ),
    );
  }
}
