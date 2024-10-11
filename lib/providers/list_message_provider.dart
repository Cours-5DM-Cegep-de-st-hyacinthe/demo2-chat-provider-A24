import 'package:chatflutter/deps/dependance.dart';
import 'package:flutter/material.dart';
import '../model/message.dart';

class ListMessageProvider extends ChangeNotifier {
  final List<Message> _messages = [];
  final Dependance _dependance;

  ListMessageProvider(this._dependance);

  List<Message> get messages => _messages;

  void add(Message message) {
    _messages.add(message);

    _dependance.additionner(5);

    notifyListeners();
  }
}