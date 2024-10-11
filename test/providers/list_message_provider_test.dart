import 'package:chatflutter/deps/dependance.dart';
import 'package:chatflutter/model/message.dart';
import 'package:chatflutter/providers/list_message_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'list_message_provider_test.mocks.dart';

// Extensions VS code à installer:
//  Coverage Gutters
//  Flutter Coverage

// Pour installer les packages nécessaires pour les mocks, exécuter la commande
//  'flutter pub add mockito --dev build_runner --dev'

// Pour générer les mocks, exécuter la commande 
//  'dart run build_runner build'

// Pour générer les fichiers contenant la couverture du code, exécuter
//  'flutter test --coverage'

@GenerateMocks([Dependance])
void main() {
  group('add', () {
    test("Tester l'ajout", () {
      final MockDependance dependance = MockDependance();

      when(dependance.additionner(any))
          .thenReturn(7);

      ListMessageProvider provider = ListMessageProvider(dependance);

      Message messageAEnvoyer = const Message(alias: 'test', message: 'test');

      provider.add(messageAEnvoyer);

      expect(provider.messages.contains(messageAEnvoyer), true);
      verify(dependance.additionner(any));
    });
  });
}