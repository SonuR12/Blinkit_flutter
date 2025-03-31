import 'package:ecomm_flutter/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  final List<Map<String, dynamic>> products = [
    {"image": "assets/images/image90.png", "title": "Amul Taaza Toned Fresh Milk", "time": "16 MINS", "price": "₹ 27",},
    {"image": "assets/images/image44.png", "title": "Potato (Aloo)", "time": "16 MINS", "price": "₹ 37",},
    {"image": "assets/images/image46.png", "title": "Hybrid Tomato", "time": "16 MINS", "price": "₹ 37",},
    {"image": "assets/images/image46.png", "title": "Hybrid Tomato", "time": "16 MINS", "price": "₹ 37",},
    {"image": "assets/images/image46.png", "title": "Hybrid Tomato", "time": "16 MINS", "price": "₹ 37",},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Cart Empty Message
            SizedBox(
              height: 270,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/shopping-cart.png",
                        width: 500,
                        height: 170,
                      ),
                      SizedBox(height: 70),
                    ],
                  ),
                  Positioned(
                    top: 170,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Reordering will be easy",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                              fontFamily: "bold",
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ), // Add spacing for better readability
                          Text(
                            "Items you order will show up here so you can buy them again easily.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  12, // Slightly larger for better readability
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Bestsellers Section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UiHelper.ContextText(
                        text: "Bestsellers",
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 20,
                      ),
                      SizedBox(height: 10),
                      // Horizontally Scrollable Product List
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                products
                                    .map(
                                      (product) => Padding(
                                        padding: EdgeInsets.only(right: 4),
                                        child: productCard(product),
                                      ),
                                    )
                                    .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Product Card
  Widget productCard(Map<String, dynamic> product) {
    return SizedBox(
      width: 120,
      height: 250, // Fixed height for consistency
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  product["image"],
                  width: 110,
                  height: 130, // Uniform image height
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 120,
                height: 32, // Fixed height for title to ensure alignment
                child: Text(
                  product["title"],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.access_time, size: 14, color: Colors.black54),
                  SizedBox(width: 4),
                  Text(
                    product["time"],
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Text(
                product["price"],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          // Positioned ADD Button
          Positioned(
            top: 115,
            right: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
              ),
              child: Text(
                "ADD",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
