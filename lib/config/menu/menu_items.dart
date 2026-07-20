import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem> [
    MenuItem(title: 'Riverpod', subTitle: 'Counter riverpod', link: '/riverpod', icon: Icons.add),
    MenuItem(title: 'Botones', subTitle: 'Varios botones en Flutter', link: '/buttons', icon: Icons.smart_button_outlined),
    MenuItem(title: 'Tarjetas', subTitle: 'Contenedor estilizado', link: '/cards', icon: Icons.credit_card),
    MenuItem(title: 'ProgressIndicator', subTitle: 'Generales y controlados', link: '/progress', icon: Icons.refresh_rounded),
    MenuItem(title: 'SnackBars and dialogs', subTitle: 'Dialogos en pantalla', link: '/snackbars', icon: Icons.info_outline),
    MenuItem(title: 'Animated container', subTitle: 'Stateful widget animado', link: '/animated', icon: Icons.check_box_outline_blank_rounded),
    MenuItem(title: 'UI controls', subTitle: 'Una serie de controles en Flutter', link: '/ui-controls', icon: Icons.switch_left_outlined),
    MenuItem(title: 'Tutorial', subTitle: 'Tutorial de la app', link: '/tutorial', icon: Icons.info_outline_rounded),
    MenuItem(title: 'Infinite', subTitle: 'Carrusel', link: '/infinite', icon: Icons.circle_outlined),
    MenuItem(title: 'ThemeChanger', subTitle: 'Pantalla para cambiar theme', link: '/theme-changer', icon: Icons.color_lens),
];

