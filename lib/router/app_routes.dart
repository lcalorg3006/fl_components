import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';


class AppRoutes {
  static const initialRoute = 'home';
  static final Menuoptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home_max_sharp, name: "Home Screen", screen:const  HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_alt, name: "Listview tipo 1", screen:const  Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list, name: "Listview tipo 2", screen:const  Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_outlined, name: "Alertas", screen:const  AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: "Tarjetas - Cards", screen:const  CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
        "listview1": (BuildContext context ) => const Listview1Screen() ,
        "listview2" : (BuildContext context) => const Listview2Screen(),
        "alert" : (BuildContext context) => const AlertScreen(),
        "card" :(BuildContext context )=> const CardScreen(),
        "home" :(BuildContext context) => const HomeScreen()
      };
      static Route<dynamic> onGenerateRoute(RouteSettings settings){
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      }
}