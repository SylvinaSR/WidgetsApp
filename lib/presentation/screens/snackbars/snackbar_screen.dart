import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      //duration: Duration(seconds: 3), NOTA: Si queremos setear duracion, hay que quitar action
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Estas seguro?'),
        content: Text('Occaecat incididunt irure qui eiusmod sint irure quis consectetur laborum id deserunt. Sint ullamco incididunt ullamco cupidatat officia ex. Officia nisi aute sit labore.'),
        actions: [
          TextButton(onPressed: ()=> context.pop(), child: Text('Cancelar')),
          FilledButton(onPressed: ()=> context.pop(), child: Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars y dialogos')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: Text('Mostrar snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    Text(
                      'Excepteur aliquip exercitation ut anim. Cupidatat excepteur excepteur adipisicing nisi sit esse magna cillum incididunt est adipisicing ullamco do aliqua. Sint mollit dolore esse enim ullamco incididunt ad nostrud magna dolore. Ut minim deserunt elit fugiat mollit eiusmod.',
                    ),
                  ],
                );
              },
              child: Text('Licencias usadas'),
            ),
            SizedBox(height: 25),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Mostrar dialogo'),
            ),
          ],
        ),
      ),
    );
  }
}
