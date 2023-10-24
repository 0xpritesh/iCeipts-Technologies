import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class phoneinfo extends StatefulWidget {
  const phoneinfo({super.key});

  @override
  State<phoneinfo> createState() => _phoneinfoState();
}

class _phoneinfoState extends State<phoneinfo> {
  final List<String> imageList = [
    'https://bafkreih5gc3glkb5m2462bnbkw4cakyefqreopw4g2vog3t65occypsgh4.ipfs.nftstorage.link/',
    'https://bafkreif337bha27o7xot3abraifwbibhrixfmjnycqtgsflz2bdqx7zzta.ipfs.nftstorage.link/',
    'https://bafkreiaavm7ir66haj7ibqtsi7dj4zxh7dpvwiltbii4hrxrb5lie6pavu.ipfs.nftstorage.link/',
    'https://bafkreifkl33ndeurswnfk4jasf75erwalkmmgulovfcsmt22cuprwbay6q.ipfs.nftstorage.link/',
  ];

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CarouselSlider(
                  items: imageList.map((imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: 400,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Image.network(imagePath, fit: BoxFit.cover),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 600.0,
                    viewportFraction: 2.0,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    pauseAutoPlayOnTouch: true,
                    enlargeCenterPage: true,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "realme 11 Pro 5G (Sunrise Beige, 128 GB)  (8 GB RAM)",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Extra ₹4000 off",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "₹25,999  15% off",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "+ ₹59 Secured Packaging Fee",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Available offers"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Bank Offer5% Cashback on Flipkart Axis Bank CardT&C"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Special PriceGet extra ₹4000 off (price inclusive of cashback/coupon)T&C"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Buy any product & get Rs. 150 Off on your next purchase of GeysersT&C"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Buy for 100 get ₹100 off your Next BuyT&C"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "No cost EMI ₹7,333/month. Standard EMI also availableView Plans"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Buy More, Save MoreT&C"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Buy More, Save MoreBuy worth ₹5000 save ₹1000See all productsT&C"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Buy for 100 get ₹50 off your Next BuyT&C"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Partner OfferSign-up for Flipkart Pay Later & get free Times Prime Benefits worth ₹20,000*Know More"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Partner OfferPurchase now & get 1 surprise cashback coupon in FutureKnow More"),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
