
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(BoxesButton());
}

class BoxesButton extends StatelessWidget {
  const BoxesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      title: "Radiobutton and checkbox",
      home: Practise(),
    );
  }
}

class Practise extends StatefulWidget {
  const Practise({super.key});

  @override
  State<Practise> createState() => _PractiseState();
}

class _PractiseState extends State<Practise> {
  String _SelectedValue = "";
  bool _checkbox = false;
  double _slidernum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radiobutton and checkbox"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 84, 63, 1),
      ),
      body: Container(
        child: Column(
          children: [
            //...........work as a button like if we tap on text it works...//
            RadioListTile(
              value: "haha",
              groupValue: _SelectedValue,
              activeColor: Color.fromARGB(255, 106, 80, 2),
              onChanged: (value) {
                setState(() {
                  _SelectedValue = value!;
                });
              },
              title: Text("male"),
            ),
            RadioListTile(
              value: "huha",
              groupValue: _SelectedValue,
              activeColor: Color.fromARGB(255, 106, 80, 2),
              onChanged: (value) {
                setState(() {
                  _SelectedValue = value!;
                });
              },
              title: Text("female"),
            ),
            //.....works only if tap on circle..............//
            Row(
              children: [
                Radio(
                    value: "male",
                    groupValue: _SelectedValue,
                    activeColor: Color.fromARGB(255, 106, 80, 2),
                    onChanged: (value) {
                      setState(() {
                        _SelectedValue = value!;
                      });
                    }),
                Text("male"),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "female",
                    groupValue: _SelectedValue,
                    activeColor: Color.fromARGB(255, 106, 80, 2),
                    onChanged: (value) {
                      setState(() {
                        _SelectedValue = value!;
                      });
                    }),
                Text("female"),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "other",
                    groupValue: _SelectedValue,
                    activeColor: Color.fromARGB(255, 106, 80, 2),
                    onChanged: (value) {
                      setState(() {
                        _SelectedValue = value!;
                      });
                    }),
                Text("other"),
              ],
            ),

            Row(
              children: [
                Checkbox(
                  value: _checkbox,
                  activeColor: Color.fromARGB(255, 106, 80, 2),
                  onChanged: (value) {
                    setState(() {
                      _checkbox = value!;
                    });
                  },
                ),
                Text(
                  "Agree?",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CheckboxListTile(
              value: _checkbox,
              activeColor: Color.fromARGB(255, 106, 80, 2),
              title: Text("are you sure ?"),
              onChanged: (value) {
                setState(() {
                  _checkbox = value!;
                });
              },
            ),
            //............switch....................
            Switch(
              value: _checkbox,
              onChanged: (value) {
                setState(() {
                  _checkbox = value;
                });
              },
            ),
            CupertinoSwitch(
              value: _checkbox,
              onChanged: (value) {
                setState(() {
                  _checkbox = value;
                });
              },
            ),
            Switch.adaptive(
              value: _checkbox,
              onChanged: (value) {
                setState(() {
                  _checkbox = value;
                });
              },
            ),

            //.................slider...................
            Text("number is : $_slidernum"),
            Slider(
              value: _slidernum,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _slidernum = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
