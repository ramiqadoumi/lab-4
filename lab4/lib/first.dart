import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lab4/main.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  String country = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "data:image/jpeg;base64,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"),
              fit: BoxFit.cover),
        ),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 249, 241, 217),
                padding: EdgeInsets.all(20),
              ),
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return MyApp();
                    },
                  ));
                });
              },
              child: Text(
                "Back to home page",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
            ),
          ),
          Divider(
            height: 180,
          ),
          Container(
            width: double.infinity,
            color: Colors.grey,
            child: Card(
              color: Color.fromARGB(255, 246, 232, 189),
              child: Text(
                "Where you want to travel?",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider(
            height: 30,
          ),
          Column(
            children: [
              Container(
                child: RadioListTile(
                  title: Text("Jardan"),
                  subtitle:
                      Text("EX:aqaba", style: TextStyle(color: Colors.red)),
                  secondary: Icon(Icons.shop),
                  value: "jordan",
                  onChanged: ((val) {
                    setState(() {
                      country = val.toString();
                    });
                  }),
                  groupValue: country,
                ),
              ),
              Container(
                child: RadioListTile(
                  title: Text("Egypt"),
                  subtitle: Text("EX:Sharm Elshakh",
                      style: TextStyle(color: Colors.red)),
                  secondary: Icon(Icons.shop),
                  value: "Eygept",
                  onChanged: ((val) {
                    setState(() {
                      country = val.toString();
                    });
                  }),
                  groupValue: country,
                ),
              ),
              Container(
                child: RadioListTile(
                  title: Text("Syria"),
                  subtitle: Text(
                    "EX:Damas",
                    style: TextStyle(color: Colors.red),
                  ),
                  secondary: Icon(Icons.shop),
                  value: "Syria",
                  onChanged: ((val) {
                    setState(() {
                      country = val.toString();
                    });
                  }),
                  groupValue: country,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
