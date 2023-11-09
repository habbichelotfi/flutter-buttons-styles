import 'package:flutter/material.dart';
import 'package:flutter_buttons/buttons/airbnb_button.dart';
import 'package:flutter_buttons/buttons/algolia1_button.dart';
import 'package:flutter_buttons/buttons/algolia2_button.dart';
import 'package:flutter_buttons/buttons/linkedin_button.dart';
import 'package:flutter_buttons/buttons/mighty_button.dart';
import 'package:flutter_buttons/buttons/nomadlist_button.dart';
import 'package:flutter_buttons/buttons/stackoverflow_button.dart';
import 'package:flutter_buttons/buttons/wilmingtonandbeaches_button.dart';

import 'buttons/google_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  String currentSelectedButton = "Google Button";

  final Map<String, Widget> buttonsTypes = {
    "Google Button": GoogleButton(),
    "AirBnb Button": AirBnbButton(),
    "Algolia1 Button": Algolia1Button(),
    "Algolia2 Button": Algolia2Button(),
    "Linkedin Button": LinkedinButton(),
    "StackOverFlow Button": StackOverflowButton(),
    "Mighty Button": MightyButton(),
    "Nomadlist Button": NomadlistButton(),
    "Wilmingtonandbeaches Button": WilmingtonandbeachesButton(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Groups"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: <Widget>[
          for (var element in buttonsTypes.keys)
            ListTile(
              tileColor: currentSelectedButton == element
                  ? Colors.deepPurple
                  : Colors.transparent,
              onTap: () {
                setState(() {
                  currentSelectedButton = element;
                });
              },
              title: Text(
                element,
                style: TextStyle(
                    color: currentSelectedButton == element
                        ? Colors.white
                        : Colors.black),
              ),
            )
        ],
      ),
      floatingActionButton: buttonsTypes[currentSelectedButton],
    );
  }
}
