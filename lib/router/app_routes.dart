import 'package:fl_components/screens/inputs_screen.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';


class AppRoutes {
  static const initialRoute = 'home';
  static final MenuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home_max_sharp, name: "Home Screen", screen:const  HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_alt, name: "Listview tipo 1", screen:const  Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list, name: "Listview tipo 2", screen:const  Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_outlined, name: "Alertas", screen:const  AlertScreen()),
    MenuOption(route: 'card', icon: Icons.card_giftcard, name: "Tarjetas - Cards", screen:const  CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.person_4_outlined, name: 'Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_outline_rounded, name: 'Animated container', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_rounded, name: 'forms: inputs', screen: InputsScreen())


  ];

  static Map<String, Widget Function(BuildContext)>getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes ={};
    for (final option in MenuOptions){
      appRoutes.addAll({option.route : (BuildContext context) => option.screen });
    }

    return appRoutes;
  }
      static Route<dynamic> onGenerateRoute(RouteSettings settings){
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      }
}