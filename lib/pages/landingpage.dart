import 'package:flutter/material.dart';

import 'home.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  height: MediaQuery.of(context).size.height / 1.7,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.center,
                  'News From Around The World For you',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Best time to read,take your time to read a little more of these world',
                    style: TextStyle(
                        color: Colors.black26,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ));
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(27)),
                    child: Center(
                        child: Text(
                      'Get Start',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
