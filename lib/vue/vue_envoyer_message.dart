import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/message.dart';
import '../providers/list_message_provider.dart';

class VueEnvoyerMessage extends StatelessWidget {

  const VueEnvoyerMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textControleur = TextEditingController();

    return Row(
      children: [
        Expanded(child: TextField(controller: textControleur)),
        IconButton(
          onPressed: () => Provider.of<ListMessageProvider>(context, listen: false)
                            .add(Message(alias: "Utilisateur1", message: textControleur.text)), 
          icon: const Icon(Icons.send))
      ],
    );
  }
}