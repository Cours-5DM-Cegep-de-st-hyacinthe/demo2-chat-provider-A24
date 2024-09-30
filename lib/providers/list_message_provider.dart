import 'package:flutter/material.dart';
import '../model/message.dart';

class ListMessageProvider extends ChangeNotifier {
  final List<Message> _messages = [];

  List<Message> get messages => _messages;

  void add(Message message) {
    _messages.add(message);

    notifyListeners();
  }
}