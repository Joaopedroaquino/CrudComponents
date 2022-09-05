import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  ListViewHome createState() {
    return ListViewHome();
  }
}

class ListViewHome extends State<ListViewWidget> {
  List<String> titles = ["Joao Pedro", "Joao Pedro 2", "Joao pedro 3"];
  final subtitles = [
    " 1 informacao detalhe",
    "2 informacao detalhe",
    "3 informacao detalhe"
  ];
  final icons = [Icons.info, Icons.info, Icons.info];
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Card(
                color: Colors.white60,
                child: ListTile(
                    onLongPress: () {
                      setState(() {
                        titles.add('Clicou${titles.length + 1}');
                        subtitles.add('Clicou${titles.length + 1} vezes');
                        icons.add(Icons.info);
                      });
                    },
                    title: Text(titles[index]),
                    subtitle: Text(subtitles[index]),
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/88518664?v=4"),
                    ),
                    trailing: Icon(icons[index])));
          }),
    );
  }
}
