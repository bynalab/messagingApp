import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  static const String id = 'chat';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.phone,
                color: Colors.grey,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onPressed: () {}),
        ],
        title: Container(
          child: Row(
            children: [
              CircleAvatar(
                child: Image.asset(
                  'images/img1.png',
                ),
                radius: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Alice Henry',
                style: GoogleFonts.roboto(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
              size: 50,
              color: Color.fromRGBO(2, 104, 251, 1),
            ),
            title: Container(
//              height: 30,
//              width: 30,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Text(
                'Images',
                style: GoogleFonts.roboto(fontSize: 12, color: Colors.grey),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.insert_drive_file,
              size: 50,
              color: Color.fromRGBO(174, 86, 251, 1),
            ),
            title: Text(
              'File',
              style: GoogleFonts.roboto(color: Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 50,
              color: Color.fromRGBO(234, 75, 51, 1),
            ),
            title: Text(
              'Contact',
              style: GoogleFonts.roboto(color: Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              size: 50,
              color: Color.fromRGBO(232, 76, 163, 1),
            ),
            title: Text(
              'Location',
              style: GoogleFonts.roboto(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
