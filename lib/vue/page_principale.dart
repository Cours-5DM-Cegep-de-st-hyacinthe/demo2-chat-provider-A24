import 'vue_liste_message.dart';
import 'package:chatflutter/vue/vue_envoyer_message.dart';
import 'package:flutter/material.dart';

class PagePrincipale extends StatefulWidget{
  const PagePrincipale({super.key});

  @override
  State<PagePrincipale> createState() {
    return _PagePrincipaleState();
  }
}

class _PagePrincipaleState extends State<PagePrincipale> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      VueListeMessage(),
      VueEnvoyerMessage()
    ]);
  }
  
}