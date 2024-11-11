import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
        ),
      body:ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1()
        ],
      )
    );
  }
}

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined, color : AppTheme.primary),
            title: Text('aqui va el titulo'),
            subtitle: Text('Laboris cillum nostrud quis dolor ad culpa quis consectetur ea do consectetur Lorem eu eiusmod. Consectetur quis id elit Lorem minim ea sint. Dolor aliquip commodo anim eiusmod elit consequat officia qui est aliquip.'),
          )
        ],
      )
    );
  }
}