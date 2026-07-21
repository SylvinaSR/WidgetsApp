import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/app_theme.dart';

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

final isDarkModeProvider = StateProvider<bool>((ref) => false);

final selectedColorProvider = StateProvider<int>((ref) => 0);
