//gradient
// import 'package:flutter/material.dart';

// void main() {
//   runApp(new MaterialApp(
//     home: new Home(),
//   ));
// }

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: new Container(
//         decoration: new BoxDecoration(
//             gradient: new LinearGradient(
//                 begin: FractionalOffset.topCenter,
//                 end: FractionalOffset.bottomCenter,
//                 colors: [
//               Colors.white,
//               Colors.purpleAccent,
//               Colors.deepPurple
//             ])),
//       ),
//     );
//   }
// }

// pageview

// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';

// void main() {
//   runApp(new MaterialApp(
//     home: new Home(),
//   ));
// }

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   Widget build(BuildContext context) {
//     timeDilation = 5.0;
//     return new Scaffold(
//       body: new Container(
//         decoration: new BoxDecoration(
//           gradient: new LinearGradient(
//               begin: FractionalOffset.topCenter,
//               end: FractionalOffset.bottomCenter,
//               colors: [Colors.white, Colors.purpleAccent, Colors.deepPurple]),
//         ),
//         child: new PageView.builder(
//             controller: new PageController(viewportFraction: 0.8),
//             itemCount: gambar.length,
//             itemBuilder: (BuildContext context, int i) {
//               return new Padding(
//                 padding:
//                     new EdgeInsets.symmetric(horizontal: 5.0, vertical: 50.0),
//                 child: new Material(
//                   elevation: 8.0,
//                   child: new Stack(
//                     fit: StackFit.expand,
//                     children: <Widget>[
//                       new Hero(
//                           tag: gambar[i],
//                           child: new Material(
//                             child: new InkWell(
//                               child: new Flexible(
//                                 flex: 1,
//                                 child: Container(
//                                   color: colors.values.elementAt(i),
//                                   child: new Image.asset(
//                                     "img/${gambar[i]}",
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               onTap: () => Navigator.of(context).push(
//                                   new MaterialPageRoute(
//                                       builder: (BuildContext context) =>
//                                           new Halamandua(
//                                             gambar: gambar[i],
//                                             colors: colors.values.elementAt(i),
//                                           ))),
//                             ),
//                           ))
//                     ],
//                   ),
//                 ),
//               );
//             }),
//       ),
//     );
//   }

//   final List<String> gambar = [
// "bt1.gif",
// "bt2.gif",
// "bt21.gif",
// "bts.gif",
// "chimmy.gif",
// "koala.gif",
// "love.gif",
// "van.gif"
//   ];

//   static const Map<String, Color> colors = {
// 'bt1': Color(0xFF2DB569),
// 'bt2': Color(0xFFF386B8),
// 'bt21': Color(0xFF45CAF5),
// 'bts': Color(0xFFB19ECB),
// 'chimmy': Color(0xFFF58E4C),
// 'koala': Color(0xFF46C1BE9),
// 'love': Color(0xFFFFEA0E),
// 'van': Color(0xFFDBE4E9)
//   };
// }

// class Halamandua extends StatelessWidget {
//   Halamandua({required this.gambar, required this.colors});
//   final String gambar;
//   final Color colors;

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("bt21"),
//         backgroundColor: Colors.purpleAccent,
//       ),
//       body: new Stack(
//         children: <Widget>[
//           new Container(
//             decoration: new BoxDecoration(
//                 gradient: new RadialGradient(
//                     center: Alignment.center,
//                     colors: [Colors.purple, Colors.white, Colors.deepPurple])),
//           ),
//           new Center(
//             child: new Hero(
//                 tag: gambar,
//                 child: new ClipOval(
//                   child: new SizedBox(
//                     width: 200.0,
//                     height: 200.0,
//                     child: new Material(
//                       child: new InkWell(
//                         onTap: () => Navigator.of(context).pop(),
//                         child: new Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: colors,
//                             child: new Image.asset(
//                               "img/$gambar",
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 )),
//           )
//         ],
//       ),
//     );
//   }
// }

// Drop menu
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(new MaterialApp(
    home: Home(),
  ));
}

// ignore: prefer_typing_uninitialized_variables
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> gambar = [
    "bt1.gif",
    "bt2.gif",
    "bt21.gif",
    "bts.gif",
    "chimmy.gif",
    "koala.gif",
    "love.gif",
    "van.gif"
  ];

  static const Map<String, Color> colors = {
    'bt1': Color(0xFF2DB569),
    'bt2': Color(0xFFF386B8),
    'bt21': Color(0xFF45CAF5),
    'bts': Color(0xFFB19ECB),
    'chimmy': Color(0xFFF58E4C),
    'koala': Color(0xFF46C1BE9),
    'love': Color(0xFFFFEA0E),
    'van': Color(0xFFDBE4E9)
  };

  Widget build(BuildContext context) {
    timeDilation = 5.0;

    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [Colors.white, Colors.purpleAccent, Colors.deepPurple]),
        ),
        child: new PageView.builder(
            controller: new PageController(viewportFraction: 0.8),
            itemCount: gambar.length,
            itemBuilder: (BuildContext context, int i) {
              return new Padding(
                  padding:
                      new EdgeInsets.symmetric(horizontal: 5.0, vertical: 50.0),
                  child: new Material(
                    elevation: 8.0,
                    child: new Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        new Hero(
                            tag: gambar[i],
                            child: new Material(
                              child: new InkWell(
                                child: new Flexible(
                                  flex: 1,
                                  child: Container(
                                    color: colors.values.elementAt(i),
                                    child: new Image.asset(
                                      "img/${gambar[i]}",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                onTap: () => Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            new Halamandua(
                                              gambar: gambar[i],
                                              colors:
                                                  colors.values.elementAt(i),
                                            ))),
                              ),
                            ))
                      ],
                    ),
                  ));
            }),
      ),
    );
  }
}

class Halamandua extends StatefulWidget {
  Halamandua({required this.gambar, required this.colors});
  final String gambar;
  final Color colors;

  @override
  State<Halamandua> createState() => _HalamanduaState();
}

class _HalamanduaState extends State<Halamandua> {
  Color warna = Colors.grey;

  void _pilihannya(Pilihan pilihan) {
    setState(() {
      warna = pilihan.warna;
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BT21"),
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[
          new PopupMenuButton<Pilihan>(
            onSelected: _pilihannya,
            itemBuilder: (BuildContext context) {
              return listPilihan.map((Pilihan x) {
                return new PopupMenuItem<Pilihan>(
                  child: new Text(x.teks),
                  value: x,
                );
              }).toList();
            },
          )
        ],
      ),
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                gradient: new RadialGradient(
                    center: Alignment.center,
                    colors: [Colors.purple, Colors.white, warna])),
          ),
          new Center(
            child: new Hero(
                tag: widget.gambar,
                child: new ClipOval(
                    child: new SizedBox(
                        width: 200.0,
                        height: 200.0,
                        child: new Material(
                          child: new InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: new Flexible(
                              flex: 1,
                              child: Container(
                                color: widget.colors,
                                child: new Image.asset(
                                  "img/${widget.gambar}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )))),
          )
        ],
      ),
    );
  }
}

class Pilihan {
  const Pilihan({required this.teks, required this.warna});
  final String teks;
  final Color warna;
}

List<Pilihan> listPilihan = const <Pilihan>[
  const Pilihan(teks: "Red", warna: Colors.red),
  const Pilihan(teks: "Green", warna: Colors.green),
  const Pilihan(teks: "Blue", warna: Colors.blue),
];
