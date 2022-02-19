import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Widget> searchdatails = [];

  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: TextFormField(
          onChanged: (s) {
            setState(() {
              search.text = s;
            });
          },
          controller: search,
          decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
                borderRadius: BorderRadius.circular(15),
              ),
              filled: true,
              fillColor: Colors.amber,
              hintText: 'Search about what You need',
              suffixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              )),
        ),
      ),
      body: search.text.length > 0
          ? Column(
              children: [],
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.search, size: 200, color: Colors.grey),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Search about what you want',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
