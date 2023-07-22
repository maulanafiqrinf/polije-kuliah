import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  List<String> agama = [
    "Islam",
    "Kristen Protestan",
    "Kristen Katolik",
    "Hindu",
    "Budha"
  ];

  String _agama = "Islam";

  String _jk = "";

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();
  TextEditingController controllerMoto = new TextEditingController();

  void _pilihJk(String value) {
    setState(() {
      _jk = value;
    });
  }

  void _pilihAgama(String value) {
    setState(() {
      _agama = value;
    });
  }

  void kirimdata() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Nama Lengkap : ${controllerNama.text}"),
            new Text("Password : ${controllerPass.text}"),
            new Text("Moto Hidup : ${controllerMoto.text}"),
            new Text("Jenis Kelamin : ${_jk}"),
            new Text("Agama : ${_agama}"),
            new RaisedButton(
              child: new Text("OK"),
              onPressed: () => Navigator.pop(context),
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Data diri"),
        backgroundColor: Colors.teal,
      ),
      body: new ListView(
        children: [
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: new Column(
                children: <Widget>[
                  new TextFormField(
                    controller: controllerNama,
                    decoration: new InputDecoration(
                        hintText: "Nama Lengkap",
                        labelText: "Nama Lengkap",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new TextFormField(
                    controller: controllerPass,
                    obscureText: true,
                    decoration: new InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new TextFormField(
                    controller: controllerMoto,
                    decoration: new InputDecoration(
                        hintText: "Moto Hidup",
                        labelText: "Moto Hidup",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Moto tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new RadioListTile(
                    value: "laki-laki",
                    title: new Text("Laki-laki"),
                    groupValue: _jk,
                    onChanged: (String? value) {
                      _pilihJk(value!);
                    },
                    activeColor: Colors.blue,
                    subtitle: new Text("Pilih ini jika anda laki-laki"),
                  ),
                  new RadioListTile(
                    value: "perempuan",
                    title: new Text("Perempuan"),
                    groupValue: _jk,
                    onChanged: (String? value) {
                      _pilihJk(value!);
                    },
                    activeColor: Colors.pink,
                    subtitle: new Text("Pilih ini jika anda perempuan"),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),
                  new Row(
                    children: <Widget>[
                      new Text(
                        "Agama",
                        style:
                            new TextStyle(fontSize: 18.0, color: Colors.blue),
                      ),
                      new Padding(
                        padding: new EdgeInsets.only(left: 15.0),
                      ),
                      DropdownButton(
                        onChanged: (String? value) {
                          _pilihAgama(value!);
                        },
                        value: _agama,
                        items: agama.map((String value) {
                          return new DropdownMenuItem(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                  new RaisedButton(
                      child: new Text("Submit"),
                      color: Colors.blue,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          kirimdata();
                        }
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
