import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myInfo(icon, cat, info) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(right: 10, top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    cat,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    info,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E2E2E),
      appBar: AppBar(
        title: Text(
          'My Digital ID',
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, color: Colors.amber),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFF2E2E2E),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 8, right: 8, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hamza Yousaf',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(50), // Image radius
                    child: Image.asset('assets/hamza.png', fit: BoxFit.cover),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: [
                myInfo(Icons.book, 'Education', 'Software Engineer'),
                myInfo(Icons.card_membership, 'CNIC', '35202-2635983-9'),
                myInfo(Icons.email, 'Email', 'hamzahunt65@gmail.com'),
                myInfo(Icons.phone, 'CNIC', '+923094979300'),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(100, 50, 80, 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Link(
                        target: LinkTarget.blank,
                        uri:
                            Uri.parse('https://www.instagram.com/hamzayousa_f'),
                        builder: (context, followLink) => IconButton(
                          onPressed: followLink,
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://wa.link/k5lrkh'),
                        builder: (context, followLink) => IconButton(
                          onPressed: followLink,
                          icon: Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri:
                            Uri.parse('https://www.facebook.com/haamza.yousaf'),
                        builder: (context, followLink) => IconButton(
                          onPressed: followLink,
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://www.twitter.com/_hamzayousaf'),
                        builder: (context, followLink) => IconButton(
                          onPressed: followLink,
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(250, 50, 0, 5),
                  child: SizedBox(
                    height: 60,
                    width: 300,
                    child: Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse('https://wa.link/k5lrkh'),
                      builder: (context, followLink) => ElevatedButton.icon(
                        onPressed: followLink,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        label: Text('Hire Me'),
                        icon: Icon(
                          FontAwesomeIcons.phone,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
