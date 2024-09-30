import 'package:chatflutter/providers/list_message_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VueListeMessage extends StatelessWidget {
  const VueListeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ListMessageProvider> (
      builder: (context, listMessageProvider, child) {
        return Expanded(
          child: Column(
            children: [
              for(var message in listMessageProvider.messages)
                Row(
                  key: Key('listeMessage${listMessageProvider.messages.indexOf(message)}'),
                  children: [Text(message.toString())],
                )
            ],
        ));
      }
    );
    
    
  }
}