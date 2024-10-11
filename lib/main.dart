import 'package:chatflutter/deps/dependance.dart';
import 'package:chatflutter/providers/list_message_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'vue/page_principale.dart';

/* Lignes de commandes à rouler:
*
*  flutter pub get
*  flutter pub add provider
*/

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Utiliser un MultiProvider pour plus qu'un ChangeNotifier
      home: Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => ListMessageProvider(Dependance()),
          child: const PagePrincipale()
        )
      )
    );
  }
}
