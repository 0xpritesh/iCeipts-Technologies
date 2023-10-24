import 'package:flutter/material.dart';
import 'package:flutter_application_2/phone_info.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 186, 225, 243),
          title: Center(
            child: Text(
              "My Shoping",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => phoneinfo(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 330,
                  width: 200,
                  child: Column(
                    children: [
                      Image.network(
                          "https://bafkreih5gc3glkb5m2462bnbkw4cakyefqreopw4g2vog3t65occypsgh4.ipfs.nftstorage.link/"),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "realme 11 Pro 5G (Astral Black, 128 GB)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "₹21,999",
                        style: TextStyle(fontSize: 22, color: Colors.lightBlue),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => phoneinfo(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 330,
                  width: 200,
                  child: Column(
                    children: [
                      Image.network(
                          "https://bafkreih5gc3glkb5m2462bnbkw4cakyefqreopw4g2vog3t65occypsgh4.ipfs.nftstorage.link/"),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "realme 11 Pro 5G (Astral Black, 128 GB)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "₹21,999",
                        style: TextStyle(fontSize: 22, color: Colors.lightBlue),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => phoneinfo(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 330,
                  width: 200,
                  child: Column(
                    children: [
                      Image.network(
                          "https://bafkreih5gc3glkb5m2462bnbkw4cakyefqreopw4g2vog3t65occypsgh4.ipfs.nftstorage.link/"),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "realme 11 Pro 5G (Astral Black, 128 GB)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "₹21,999",
                        style: TextStyle(fontSize: 22, color: Colors.lightBlue),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => phoneinfo(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 330,
                  width: 200,
                  child: Column(
                    children: [
                      Image.network(
                          "https://bafkreih5gc3glkb5m2462bnbkw4cakyefqreopw4g2vog3t65occypsgh4.ipfs.nftstorage.link/"),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "realme 11 Pro 5G (Astral Black, 128 GB)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "₹21,999",
                        style: TextStyle(fontSize: 22, color: Colors.lightBlue),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => phoneinfo(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 330,
                  width: 200,
                  child: Column(
                    children: [
                      Image.network(
                          "https://bafkreih5gc3glkb5m2462bnbkw4cakyefqreopw4g2vog3t65occypsgh4.ipfs.nftstorage.link/"),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "realme 11 Pro 5G (Astral Black, 128 GB)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "₹21,999",
                        style: TextStyle(fontSize: 22, color: Colors.lightBlue),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => phoneinfo(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 330,
                  width: 200,
                  child: Column(
                    children: [
                      Image.network(
                          "https://bafkreih5gc3glkb5m2462bnbkw4cakyefqreopw4g2vog3t65occypsgh4.ipfs.nftstorage.link/"),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "realme 11 Pro 5G (Astral Black, 128 GB)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "₹21,999",
                        style: TextStyle(fontSize: 22, color: Colors.lightBlue),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ])));
  }
}
