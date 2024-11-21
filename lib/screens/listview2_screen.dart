import 'package:fl_components/screens/personas_screen.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/widgets/custom_card_tipo_2.dart';


class Listview2Screen extends StatelessWidget {


final options = const [
    {'title': 'Taragaruen', 'imageUrl': 'https://cdn2.chicmagazine.com.mx/uploads/media/2022/08/05/house-of-the-dragon-targaryen.jpg', 'description': 'La Casa Targaryen, compleja y fascinante, abunda de intrigas, tragedias y el misterioso poder de los dragones. Su legado perdura en los hilos del destino de Westeros, su incansable lucha por el Trono de Hierro domina la narrativa de "Game of Thrones".'},
    {'title': 'Stark', 'imageUrl': 'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2017/07/12/14998702725628.jpg', 'description': 'La Casa Stark representa los valores de honor, lealtad y resistencia en un mundo a menudo cruel y traicionero. Su lema, "El invierno se acerca", no solo es un aviso del clima riguroso del Norte, sino también un recordatorio de los desafíos que todos los personajes deben enfrentar en su lucha por la supervivencia y la justicia en Westeros. La historia de los Stark es una de lucha, sacrificio y el poder de la familia, lo que los convierte en uno de los pilares de la narrativa de "Game of Thrones".'},
    {'title': 'Lannister', 'imageUrl': 'https://cdn.alfabetajuega.com/alfabetajuega/2024/09/jaime-es-hijo-de-tywin-y-ha-servido-a-la-caballeria-del-rey-como-su-mejor-espadachin.jpg', 'description': 'La Casa Lannister es un símbolo del poder, la riqueza y la ambición en Westeros. Su historia está llena de intrigas, traiciones y conflictos familiares, lo que los convierte en una de las casas más complejas y fascinantes de "Game of Thrones". A través de personajes como Tywin, Cersei, Jaime y Tyrion, la Casa Lannister explora temas de poder, lealtad y la lucha por la supervivencia en un mundo brutal y cruel.'},
    {'title': 'Barathaon', 'imageUrl': 'https://upload.wikimedia.org/wikipedia/commons/0/04/Dragon_Con_2014_-_King_Robert_%2815635317062%29.jpg', 'description': 'La Casa Baratheon representa la fuerza, la ambición y la lucha por el poder en Westeros. A través de personajes como Robert, Stannis y Renly, la narrativa explora temas de liderazgo, lealtad y las consecuencias de la guerra. A medida que la familia Baratheon se enfrenta a adversidades tanto internas como externas, su legado se convierte en una parte fundamental del conflicto que define la historia de "Game of Thrones".'},
  ];
  const Listview2Screen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final character = options[index];
          return ListTile(
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            title: Text(character['title']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PersonajesScreen(
                    characterName: character['title']!,
                    imageUrl: character['imageUrl']!,
                    description: character['description']!,
                  ),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}


