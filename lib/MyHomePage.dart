import 'package:flutter/material.dart';

import 'modelData.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Model Bottom Sheet'),
        actions: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  builder: (context) => DraggableScrollableSheet(
                      initialChildSize: 0.4,
                      maxChildSize: 0.9,
                      minChildSize: 0.32,
                      expand: false,
                      builder: (context, scrollCtrl) {
                        return SingleChildScrollView(
                          controller: scrollCtrl,
                          child: const ModelData(),
                        );
                      }));
            },
            child: const Icon(
              Icons.settings,
              size: 30,
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Image.asset(
        'images/background.jpg',
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
