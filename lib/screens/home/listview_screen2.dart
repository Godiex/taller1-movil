import 'package:flutter/material.dart';
import 'package:taller1/widgets/widgets.dart';

class ListviewScreen2 extends StatelessWidget {
  final options =  const ['C#', 'Java', 'JavaScript', 'Dart', 'C++'];
  const ListviewScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview segundo tipo'),
        elevation: 0,
        backgroundColor:mainColor,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward, color: mainColor),
            onTap: () {
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: options.length
      ),
    );
  }
}
