import 'package:flutter/material.dart';
import 'package:hexa/log/login.dart';

// ignore: use_key_in_widget_constructors
class Sigin extends StatefulWidget {
  static String id = 'Sigin';

  @override
  State<Sigin> createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
  String _email, _password;
  bool _icon = true;
  final GlobalKey<FormState> _glopal = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      body: Form(
        key: _glopal,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 320, top: 50),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(Login.id);
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(top: 10, left: 10),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Sign up to your account',
                    style: TextStyle(fontSize: 60),
                  ),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      width: 350,
                      height: 700,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            // ignore: prefer_const_constructors
                            child: TextField(
                              decoration: const InputDecoration(
                                labelText: 'Full Name',
                                labelStyle: TextStyle(fontSize: 20),
                                hintText: 'Ahmed Mohammed',
                                hintStyle: TextStyle(fontSize: 15),
                              ),
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(20),
                            // ignore: prefer_const_constructors
                            child: TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'The input is empty';
                                }
                              },
                              onSaved: (value) {
                                _email = value;
                              },
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(fontSize: 20),
                                hintText: 'Email.Adress@gmail.com',
                                hintStyle: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(20),
                            // ignore: prefer_const_constructors
                            child: TextField(
                              decoration: const InputDecoration(
                                labelText: 'Mobile Number',
                                labelStyle: TextStyle(fontSize: 20),
                                hintText: '0000000000',
                                hintStyle: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(20),
                            // ignore: prefer_const_constructors
                            child: TextField(
                              decoration: const InputDecoration(
                                labelText: 'City',
                                labelStyle: TextStyle(fontSize: 20),
                                hintText: 'Riyadh',
                                hintStyle: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'The input is empty';
                                }
                              },
                              onSaved: (value) {
                                _password = value;
                              },
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: const TextStyle(fontSize: 20),
                                hintText: '.....',
                                hintStyle: const TextStyle(
                                    fontSize: 30, color: Colors.black),
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
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: TextFormField(
                              validator: (value) {
                                if (value != _password) {
                                  return 'The password is not equal';
                                }
                              },
                              // ignore: unnecessary_const
                              decoration: const InputDecoration(
                                labelText: 'Confirm Password',
                                labelStyle: TextStyle(fontSize: 20),
                                hintText: '.....',
                                hintStyle: TextStyle(
                                    fontSize: 30, color: Colors.black),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(30, 0, 20, 30),
                // ignore: deprecated_member_use
                child: FlatButton(
                  padding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Sign up',
                        style: TextStyle(fontSize: 27, color: Colors.white),
                      ),
                    ],
                  ),
                  color: Colors.amber[600],
                  onPressed: () {
                    if (_glopal.currentState.validate()) {
                      _glopal.currentState.save();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
