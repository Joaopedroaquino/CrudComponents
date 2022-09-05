import 'package:crud_components/src/widgets/dropdown/drop_down.dart';
import 'package:flutter/material.dart';

class HeaderListagem extends StatefulWidget {
  const HeaderListagem({super.key});

  @override
  State<HeaderListagem> createState() => _HeaderListagemState();
}

class _HeaderListagemState extends State<HeaderListagem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Adicionar'),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text('Filtrar por:'),
                const SizedBox(
                  width: 10,
                ),
                const DropDownWidget(),
                const SizedBox(
                  width: 40,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                    label: const Text('Filtrar')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
