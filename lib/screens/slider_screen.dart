import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 200;
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
                onChanged: (value) {
                  print(value);
                  // le pasamos el valor 
                  _sliderValue = value;
                  setState(() {
                    
                  });
                })
          ],
        ));
  }
}
