import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avatar'),
      actions: const [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: const Text('LC'),
            backgroundColor: Colors.lightGreenAccent,
          ),
        )
      ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage('https://img.freepik.com/foto-gratis/retrato-padre-suyo-patio-trasero_23-2149489567.jpg'),
         )
      ),
    );
  }
}