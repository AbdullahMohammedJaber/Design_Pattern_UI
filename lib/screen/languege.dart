import 'package:flutter/material.dart';
import 'package:hexa/log/login.dart';

// ignore: use_key_in_widget_constructors
class Third extends StatefulWidget {
  static String id = 'Third';
  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  List<RadioModel> sampleData = <RadioModel>[];
  // ignore: unused_field

  @override
  void initState() {
    super.initState();
    sampleData.add(RadioModel(false, '', 'English'));
    sampleData.add(RadioModel(false, '', 'العربية'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Stack(
          children: [
            Image.asset(
              "assets/5.png",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              top: 230,
              left: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text("Choose Your Preferred Language",
                      style:
                          // ignore: unnecessary_const
                          const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "اختر اللغة المفضلة",
                    // ignore: unnecessary_const
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: 0,
              // ignore: sized_box_for_whitespace
              child: Container(
                width: 500,
                height: 230,
                child: ListView.builder(
                  itemCount: sampleData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          sampleData
                              // ignore: avoid_function_literals_in_foreach_calls
                              .forEach((element) => element.isSelected = false);
                          sampleData[index].isSelected = true;
                        });
                      },
                      child: RadioItem(sampleData[index]),
                    );
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 70,
              left: MediaQuery.of(context).size.width * 0.42,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(200, 211, 176, 86)),
                    borderRadius: BorderRadius.circular(10)),
                width: 60,
                height: 60,
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  color: const Color.fromARGB(200, 211, 176, 86),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(Login.id);
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  // ignore: use_key_in_widget_constructors
  const RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const SizedBox(
                width: 0,
              ),
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.grey[200],
                child: const Icon(Icons.g_translate,
                    size: 23, color: Color.fromARGB(200, 211, 176, 86)),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                // ignore: prefer_const_constructors
                // ignore: unnecessary_new
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(left: 10.0),
                child: Text(
                  _item.text,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
              ),
              Icon(
                _item.isSelected ? Icons.check : null,
                color: _item.isSelected
                    ? const Color.fromARGB(200, 211, 176, 86)
                    : null,
              ),
            ],
          ),
          Divider(
            endIndent: MediaQuery.of(context).size.width * 0.3,
            indent: MediaQuery.of(context).size.width * 0.1,
          )
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;
  final String text;

  RadioModel(this.isSelected, this.buttonText, this.text);
}
