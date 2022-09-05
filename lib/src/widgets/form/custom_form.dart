import 'package:flutter/material.dart';

class CustomFormWidget extends StatefulWidget {
  const CustomFormWidget({super.key});

  @override
  CustomFormWidgetState createState() {
    return CustomFormWidgetState();
  }
}

class CustomFormWidgetState extends State<CustomFormWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Detalhes:',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit_attributes),
                    label: const Text('Salvar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // background
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    label: const Text('Editar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // background
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                    label: const Text('Excluir'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // background
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
