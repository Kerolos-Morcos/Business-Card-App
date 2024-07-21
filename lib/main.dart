import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});
  @override
  Widget build(BuildContext context) {
    String orTxt = 'flutter developer'.toUpperCase();
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: Scaffold(
            backgroundColor: const Color(0xFF274460),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: CircleAvatar(
                      radius: 95,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 93,
                        backgroundImage: AssetImage(
                          'assets/images/BusinessCardApp.png',
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Kerolos Morcos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      orTxt,
                      style: const TextStyle(
                        color: Color(0xFF6C8090),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xFF6C8090),
                    thickness: 1,
                    indent: 30,
                    endIndent: 30,
                    height: 8,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 60,
                    child: const Row(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Icon(
                            Icons.phone,
                            size: 28,
                            color: Color(0xFF28475E),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 29.0),
                          child: Text(
                            '(+20) 1200447891',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 26.0, vertical: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      height: 60,
                      child: const Row(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Icon(
                              Icons.mail,
                              size: 28,
                              color: Color(0xFF28475E),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 29.0),
                            child: Text(
                              'Keromarcos3@gmail.com',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // This is an abbreviation of a built in widget (ListTile)
                  SizedBox(
                    height: 78,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 26, vertical: 8),
                      child: const ListTile(
                        minVerticalPadding: 18,
                        leading: Icon(
                          Icons.location_on,
                          size: 28,
                          color: Color(0xFF28475E),
                        ),
                        title: Text(
                          'Saad Zaghloul St. Aswan',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    // End OF Card Widget

                    // i used sizedBox to give the card the same height like
                    // other cards , and gave it minVerticalPadding to center
                    // the text after expanding height
                  ),

                  // Bonus (Adding A Button)
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 72, 108, 136),
                          foregroundColor: Colors.white),
                      onPressed: () => {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: 23,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                          SizedBox(
                            width: 8,
                            height: 55,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 27,
                          )
                        ],
                      ),
                    ),
                  ),
                  // End Of Button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
