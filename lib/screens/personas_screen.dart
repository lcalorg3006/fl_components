import 'package:fl_components/widgets/custom_card_tipo_2.dart';
import 'package:flutter/material.dart';

class PersonajesScreen extends StatelessWidget {
  final String characterName;
  final String imageUrl;
  final String description;

  const PersonajesScreen({
    Key? key,
    required this.characterName,
    required this.imageUrl,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(characterName),
      ),
      body: Column(
        children: [
          CustomCardTipo2(
            imageUrl: imageUrl,
            nombre: characterName,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}