import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const String name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Progress indicator')),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(height: 20,),
          Text('Circular progress indicator'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black26,),
          SizedBox(height: 20,),
          Text('Progress Indicator controlado'),
          SizedBox(height: 10,),
          _ControlledProgressIndicator()
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}
