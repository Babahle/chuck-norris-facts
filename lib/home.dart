import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  String? _fact;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chuck Norris Facts"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/chuck-2.png"),
            const SizedBox(
              height: 10.0,
            ),

            Text(
              "'${_fact?? ""}'",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.brown,
                fontSize: 18.0,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(
              height: 30.0,
            ),

            ElevatedButton(
              onPressed: (){
                _getFact();
              },
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Get Fact"),
              ),
            )
          ],
        ),
      ),
    );
  }

  _getFact() async {
      var url = Uri.https("api.chucknorris.io", "/jokes/random");
      var response = await http.get(url);
      Map<String, dynamic> body = jsonDecode(response.body);
      setState(() {
        _fact = body["value"];
      });
  }
}
