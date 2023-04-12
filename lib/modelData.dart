import 'package:flutter/material.dart';

class ModelData extends StatelessWidget {
  const ModelData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Model Data',
            style: TextStyle(fontSize: 20),
          ),
          Divider(),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(Icons.person),
              SizedBox(
                width: 20,
              ),
              Text(
                'Username',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(Icons.edit_note),
              SizedBox(
                width: 20,
              ),
              Text(
                'Notes',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(Icons.settings),
              SizedBox(
                width: 20,
              ),
              Text(
                'Settings',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(Icons.note),
              SizedBox(
                width: 20,
              ),
              Text(
                'Terms And Conditions',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(Icons.logout),
              SizedBox(
                width: 20,
              ),
              Text(
                'Logout',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'))
        ],
      ),
    );
  }
}
