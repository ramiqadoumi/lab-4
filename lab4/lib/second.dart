import 'package:flutter/material.dart';
import 'package:lab4/main.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List items = ["1-3 person", "3-5 person", "5-7 person"];
  String selected = "1-3 person";
  String class1 = "";
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: ListView(children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "data:image/jpeg;base64,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"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Card(
                color: Color.fromARGB(255, 247, 231, 185),
                child: Text(
                  "Pleas enter your information",
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Divider(
                height: 30,
              ),
              Text(
                "How many person?",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              Divider(
                height: 15,
                thickness: 3,
                color: Colors.green,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Color.fromARGB(255, 238, 123, 161),
                child: DropdownButton(
                  items: items
                      .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                      .toList(),
                  onChanged: ((val) {
                    setState(() {
                      selected = val.toString();
                    });
                  }),
                  value: selected,
                ),
              ),
              Text(
                "Pleas select your class",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              Divider(
                height: 15,
                thickness: 3,
                color: Colors.green,
              ),
              Column(children: [
                Container(
                  child: RadioListTile(
                    title: Text("Business"),
                    subtitle: Text("200 per person",
                        style:
                            TextStyle(color: Color.fromARGB(255, 54, 60, 244))),
                    value: "jordan",
                    onChanged: ((val) {
                      setState(() {
                        class1 = val.toString();
                      });
                    }),
                    groupValue: class1,
                  ),
                ),
                Container(
                  child: RadioListTile(
                    title: Text("Egypt"),
                    subtitle: Text("150 per person",
                        style:
                            TextStyle(color: Color.fromARGB(255, 54, 60, 244))),
                    value: "Eygept",
                    onChanged: ((val) {
                      setState(() {
                        class1 = val.toString();
                      });
                    }),
                    groupValue: class1,
                  ),
                ),
              ]),
              Divider(
                height: 30,
              ),
              Text(
                "Pleas     select      whatever     you      have    during      the     trip",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              Divider(
                height: 15,
                thickness: 3,
                color: Colors.green,
              ),
              CheckboxListTile(
                secondary: Icon(
                  Icons.pets,
                ),
                subtitle: Text("Eg:dog ,car,etc...",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    )),
                title: Text(
                  "pets",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                value: check1,
                onChanged: ((val) {
                  setState(() {
                    check1 = val!;
                  });
                }),
              ),
              CheckboxListTile(
                secondary: Icon(
                  Icons.medical_information,
                ),
                subtitle: Text("Eg:Stethoscope,Thermometer,etc..",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    )),
                title: Text(
                  "Medical",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                value: check2,
                onChanged: ((val) {
                  setState(() {
                    check2 = val!;
                  });
                }),
              ),
              CheckboxListTile(
                secondary: Icon(
                  Icons.wrong_location,
                ),
                subtitle: Text("Eg:gun,pistol,etc..",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    )),
                title: Text(
                  "weapon",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                value: check3,
                onChanged: ((val) {
                  setState(() {
                    check3 = val!;
                  });
                }),
              ),
              Divider(
                height: 50,
              ),
              ElevatedButton.icon(
              onPressed: () {
                 setState(() {
              Navigator.pop(context, MaterialPageRoute(builder: (context){
                return MyApp();
              },
               ) );
              
            });
              },
              icon: Icon(Icons.home),
              label: Text("Back to home")),
            ],
          ),
        ),
      ]),
    );
  }
}
