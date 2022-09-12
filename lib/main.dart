
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  String encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
  final Uri email = Uri(
      scheme: 'mailto',
      path: 'aleemosama10@gmail.com',
      query: encodeQueryParameters(<String, String>{
        'subject' : 'Test Application'
      })
  );
  final Uri phone = Uri(
      scheme: 'tel',
      path: '+9200000000000'
  );
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/profile.png")),
            const Text(
              'Osama Aleem',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Dancing-Script'),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontFamily: 'Source-Sans-Pro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade100),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            TextButton(
              onPressed: () => launchUrl(phone),
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+92 331 4882779',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source-Sans-Pro',
                        fontWeight: FontWeight.normal,
                        fontSize: 15.0),
                  ),
                ),
              ),
            ),
            TextButton(onPressed: () => launchUrl(email),
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'aleemosama10@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Source-Sans-Pro',
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    ),
  );
}
