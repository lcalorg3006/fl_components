import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color : AppTheme.primary),
            title: Text('aqui va el titulo'),
            subtitle: Text('Laboris cillum nostrud quis dolor ad culpa quis consectetur ea do consectetur Lorem eu eiusmod. Consectetur quis id elit Lorem minim ea sint. Dolor aliquip commodo anim eiusmod elit consequat officia qui est aliquip.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: TextButton(onPressed: (){}, child: const Text('Aceptar'),
                  ),
                ),
          ],
          )
        ],
      )
    );
  }
}