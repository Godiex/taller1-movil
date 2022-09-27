import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'), backgroundColor: mainColor),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: const Text('Nombre Ruta'),
            leading: const Icon(Icons.ac_unit),
            onTap: () {
              Navigator.pushNamed(context, 'listview2');
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 10
      )
    );
  }
}
