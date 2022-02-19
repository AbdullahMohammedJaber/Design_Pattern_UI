import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:hexa/widget/my_header.dart';

// ignore: use_key_in_widget_constructors
class FAQ extends StatefulWidget {
  static String id = 'FAQ';

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  IconData trailing = Icons.arrow_drop_down;
  bool isexpand = false;
  onpress() {
    setState(() {
      trailing = Icons.ac_unit;
    });
  }

  // ignore: non_constant_identifier_names
  List<String> faq_title = [
    'Q1 : What is store ?',
    'Q2 : What is store ?',
    'Q3 : What is store ?',
    'Q4 : What is store ?',
    'Q5 : What is store ?',
  ];
  var scaffuldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffuldkey,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'FAQ',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            scaffuldkey.currentState.openDrawer();
          },
        ),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text(faq_title[0]),
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Contrary to popular belief, Lorem Ipsum is nghhhot simpte. It has roots in a piece of classical Latin literature from 45 BC, making',
                    )
                  ]),
            ],
            backgroundColor:
                const Color.fromARGB(248, 228, 183, 1).withOpacity(.2),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
          ),
          const SizedBox(
            height: 15,
          ),
          ExpansionTile(
            title: Text(faq_title[1]),
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Contrary to popular belief, Lorem Ipsum is nghhhot simpte. It has roots in a piece of classical Latin literature from 45 BC, making',
                    )
                  ]),
            ],
            backgroundColor:
                const Color.fromARGB(248, 228, 183, 1).withOpacity(.2),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
          ),
          const SizedBox(
            height: 15,
          ),
          ExpansionTile(
            title: Text(faq_title[2]),
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Contrary to popular belief, Lorem Ipsum is nghhhot simpte. It has roots in a piece of classical Latin literature from 45 BC, making',
                    )
                  ]),
            ],
            backgroundColor:
                const Color.fromARGB(248, 228, 183, 1).withOpacity(.2),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
          ),
          const SizedBox(
            height: 15,
          ),
          ExpansionTile(
            title: Text(faq_title[3]),
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Contrary to popular belief, Lorem Ipsum is nghhhot simpte. It has roots in a piece of classical Latin literature from 45 BC, making',
                    )
                  ]),
            ],
            backgroundColor:
                const Color.fromARGB(248, 228, 183, 1).withOpacity(.2),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
          ),
          const SizedBox(
            height: 15,
          ),
          ExpansionTile(
            title: Text(faq_title[4]),
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Contrary to popular belief, Lorem Ipsum is nghhhot simpte. It has roots in a piece of classical Latin literature from 45 BC, making',
                    )
                  ]),
            ],
            backgroundColor:
                const Color.fromARGB(248, 228, 183, 1).withOpacity(.2),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
          ),
        ],
      ),
    );
  }
}
