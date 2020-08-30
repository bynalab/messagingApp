import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging_app/screens/chat.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Center(
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70.0),
                    image: DecorationImage(
                      image: AssetImage('images/img1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Connect Together',
              style: GoogleFonts.roboto(
                  fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40.0),
            Container(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                color: Color.fromRGBO(5, 105, 251, 1),
                elevation: 0.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(),
                    ),
                  );
                },
                child: Text(
                  'Get started',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Log in',
              style: GoogleFonts.roboto(
                color: Color.fromRGBO(5, 105, 251, 1),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
