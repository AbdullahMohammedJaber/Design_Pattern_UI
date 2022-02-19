import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexa/log/forget.dart';
import 'package:hexa/log/sigin.dart';
import 'package:hexa/screen/hexa.dart';

// ignore: use_key_in_widget_constructors
class Login extends StatefulWidget {
  static String id = 'Login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _icon = true;
  final GlobalKey<FormState> _glopal = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent[100],
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            // ignore: sized_box_for_whitespace
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(Hexa.id);
                },
                // ignore: prefer_const_constructors
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: const Text(
                    'Skip',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            )
          ],
        ),
        body: Form(
          key: _glopal,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Log in to your account',
                      style: TextStyle(fontSize: 60),
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                Padding(
                  padding: const EdgeInsets.all(15),
                  // ignore: avoid_unnecessary_containers
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          width: 370,
                          height: 230,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(20),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'The input is empty';
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: TextStyle(fontSize: 20),
                                    hintText: 'Email.Adress@Gmail.Com',
                                    hintStyle: TextStyle(fontSize: 19),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'The input is empty';
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: const TextStyle(fontSize: 20),
                                    hintText: '******',
                                    hintStyle: const TextStyle(
                                        fontSize: 20, color: Colors.black),
                                    suffixIcon: IconButton(
                                      icon: Icon(_icon
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          _icon = !_icon;
                                        });
                                      },
                                    ),
                                  ),
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: _icon,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                // ignore: avoid_unnecessary_containers
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(30, 0, 20, 30),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      padding: const EdgeInsets.all(10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 27, color: Colors.white),
                      ),
                      color: Colors.amber[600],
                      onPressed: () {},
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                Padding(
                  padding: const EdgeInsets.all(20),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    // ignore: prefer_const_literals_to_create_immutables

                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(Forget.id);
                      },
                      // ignore: unnecessary_const
                      child: const Text(
                        'Forget Password ?',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers

                // ignore: avoid_unnecessary_containers
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 70, 0, 0),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(fontSize: 17),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(Sigin.id);
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                color: Colors.amber[600], fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
