import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 200;
  bool _sliderenabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders'),
        ),
        body: Column(
          children: [
            // ponemos adaptative para que se  vea diferente en android o ios
            Slider.adaptive(
              // lo pongo a color verde
                min: 40, max: 400, value: _sliderValue, 
                // cuando el checkbox esta a true funciona sino pues no puede utilizar la barra
                onChanged: _sliderenabled ?  (value) {
                  print(value);
                  // le pasamos el valor 
                  _sliderValue = value;
                  setState(() {
                    
                  });
                }
                // bloquea el widget de la barra slider
                :null),
                Checkbox(
                  value: _sliderenabled, 
                  onChanged: (value){
                    _sliderenabled = value ?? true;
                    setState(() {
                      
                    });
                  })

          ],
        ));
  }
}
