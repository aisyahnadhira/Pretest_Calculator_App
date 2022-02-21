import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var angka1 = 0, angka2 = 0, jumlah = 0;

  final TextEditingController a1 = TextEditingController(text: "0");
  final TextEditingController a2 = TextEditingController(text: "0");

  void tambah() {
    setState(() {
      angka1 = int.parse(a1.text);
      angka2 = int.parse(a2.text);
      jumlah = angka1 + angka2;
    });
  }

  void kurang() {
    setState(() {
      angka1 = int.parse(a1.text);
      angka2 = int.parse(a2.text);
      jumlah = angka1 - angka2;
    });
  }

  void kali() {
    setState(() {
      angka1 = int.parse(a1.text);
      angka2 = int.parse(a2.text);
      jumlah = angka1 * angka2;
    });
  }

  void bagi() {
    setState(() {
      angka1 = int.parse(a1.text);
      angka2 = int.parse(a2.text);
      jumlah = angka1 ~/ angka2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hasil Perhitungan : $jumlah",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontFamily: "Roboto"),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                TextFormField(
                  controller: a1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 210, 209, 211),
                    filled: true,
                    hintText: "Input Pertama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                TextFormField(
                  controller: a2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 210, 209, 211),
                    filled: true,
                    hintText: "Input Kedua",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Row(children: <Widget>[
                  Container(
                    width: 138,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 108, 146, 244),
                          Color.fromARGB(255, 26, 115, 233),
                        ],
                      ),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: kali,
                        child: const Center(
                          child: Text("x",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 50.0),
                  ),
                  Container(
                    width: 138,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 108, 146, 244),
                          Color.fromARGB(255, 26, 115, 233),
                        ],
                      ),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: bagi,
                        child: const Center(
                          child: Text("/",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                  ),
                ]),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Row(children: <Widget>[
                  Container(
                    width: 138,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 108, 146, 244),
                          Color.fromARGB(255, 26, 115, 233),
                        ],
                      ),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: tambah,
                        child: const Center(
                          child: Text("+",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 50.0),
                  ),
                  Container(
                    width: 138,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 108, 146, 244),
                          Color.fromARGB(255, 26, 115, 233),
                        ],
                      ),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: kurang,
                        child: const Center(
                          child: Text("-",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            )),
      ),
    );
  }
}
