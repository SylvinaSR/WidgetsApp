import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI controls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text('Developer mode'),
          subtitle: Text('Habilitar  modo desarrollador'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: Text('Vehiculo de trasporte'),
          subtitle: Text(selectedTransportation.name),
          children: [
            RadioGroup<Transportation>(
              groupValue: selectedTransportation,
              onChanged: (Transportation? value) {
                if (value == null) return;
                setState(() {
                  selectedTransportation = value;
                });
              },
              child: Column(
                children: [
                  RadioListTile<Transportation>(
                    value: Transportation.car,
                    title: Text('Carro'),
                    subtitle: Text('Viajar en carro'),
                  ),
                  RadioListTile<Transportation>(
                    value: Transportation.boat,
                    title: Text('Bote'),
                    subtitle: Text('Viajar en bote'),
                  ),
                  RadioListTile<Transportation>(
                    value: Transportation.plane,
                    title: Text('Avion'),
                    subtitle: Text('Viajar en avion'),
                  ),
                  RadioListTile<Transportation>(
                    value: Transportation.submarine,
                    title: Text('Submarino'),
                    subtitle: Text('Viajar en submarino'),
                  ),
                ],
              ),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Quieres incluir desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Quieres incluir comida?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Quieres incluir caena?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
