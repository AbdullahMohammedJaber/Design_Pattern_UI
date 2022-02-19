import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexa/dummy.dart';
import 'package:hexa/screen/booking.dart';
// ignore: unused_import
import 'package:hexa/screen/rating.dart';

// ignore: use_key_in_widget_constructors
class Details extends StatefulWidget {
  static String id = 'Details';
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // ignore: unused_field
  final _dialog = RatingDialog(
    title: 'Rate This Product',
    submitButton: 'Submit',
    onSubmitted: (i) {
      // ignore: avoid_print
      print(i.rating);
    },
    message: 'Please rate and let us know the problems in your comment below',
    enableComment: true,
    commentHint: 'write your description of this product here',
  );

// show the dialog

  Color details = HexColor('#F7C873');
  Color text = HexColor('#F7C873');
  Color services = Colors.transparent;
  int views = 12;
  int likes = 12;

  @override
  Widget build(BuildContext context) {
    final detail = ModalRoute.of(context)!.settings.arguments as String;
    final select = Dummy_serves.firstWhere((val) => val.id == detail);
    List<String> slider = [
      select.imageurl,
      select.imageurl,
      select.imageurl,
      select.imageurl
    ];
    return Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color.fromRGBO(249, 248, 237, 1),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          // ignore: prefer_const_constructors
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // ignore: prefer_const_constructors
        title: Text(
          'Service Details',
          // ignore: prefer_const_constructors
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(top: 15),
            width: double.infinity,
            height: 200,
            child: CarouselSlider(
              items: slider
                  .map(
                    (e) => Image(image: AssetImage(e), fit: BoxFit.contain),
                  )
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                initialPage: 0,
                viewportFraction: 1,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'views $views',
                      // ignore: prefer_const_constructors
                      style: TextStyle(color: Colors.grey),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'likes $likes',
                      // ignore: prefer_const_constructors
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
              ),
              const Text(
                'Provide Hair Cutting',
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // ignore: deprecated_member_use
                    FlatButton(
                      shape: Border(
                        bottom: BorderSide(color: details),
                      ),
                      onPressed: () {
                        setState(() {
                          details = HexColor('#F7C873');
                          services = Colors.transparent;
                        });
                      },
                      child: Text(
                        'Details',
                        style: TextStyle(
                          color: text,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),

                    // ignore: deprecated_member_use
                    FlatButton(
                      //autofocus: true,
                      onPressed: () {
                        setState(() {
                          details = Colors.transparent;
                          services = HexColor('#F7C873');
                        });
                      },
                      shape: Border(
                        bottom: BorderSide(color: services),
                      ),
                      child: Text('Rating',
                          style: TextStyle(
                              color: text, fontWeight: FontWeight.w900)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          details == HexColor('#F7C873')
              // ignore: avoid_unnecessary_containers
              ? Container(
                  child: SingleChildScrollView(
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              // ignore: prefer_const_constructors
                              child: Text(
                                '2/12/2020_31/12/2020',
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(
                              padding:
                                  // ignore: unnecessary_const
                                  const EdgeInsets.symmetric(horizontal: 20),
                              // ignore: prefer_const_constructors
                              child: Text(
                                '20.0 SAR',
                                // ignore: prefer_const_constructors
                                // ignore: prefer_const_constructors
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            // ignore: prefer_const_constructors
                            // ignore: prefer_const_constructors
                            Text(
                              '20.0 SAR',
                              // ignore: prefer_const_constructors
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            // ignore: prefer_const_constructors
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              // ignore: prefer_const_constructors
                              // ignore: prefer_const_constructors
                              // ignore: prefer_const_constructors
                              child: Text(
                                'Hair Cut',
                                // ignore: prefer_const_constructors
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'Cantrary to papular belief, Larem Ipsum is nghhhot simp\nte .it has roots in a piece at classical Latin literature from\n45 #C, making ',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              // ignore: avoid_unnecessary_containers
              : Container(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [],
                  ),
                ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Send',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.amber[600],
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Bokking.id, arguments: select.id);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset.zero,
                      )
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.food_bank),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset.zero,
                      )
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Related Products :',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 200,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/hear1.png',
                      fit: BoxFit.contain,
                    ),
                    Column(children: [
                      Text(
                        'Product name',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '20 SAR',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.amber,
                        ),
                      ),
                    ])
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 200,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/hear2.png',
                      fit: BoxFit.contain,
                    ),
                    Column(
                      children: [
                        Text(
                          'Product name',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '20 SAR',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
