import 'package:ecomm_flutter/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> sale = [
    {"image": "assets/images/image50.png", "title": "Holi Rang"},
    {"image": "assets/images/image51.png", "title": "Holi Gift"},
    {"image": "assets/images/image52.png", "title": "Appliances & Gadgets"},
    {"image": "assets/images/image53.png", "title": "Home & Living"},
  ];

  final List<Map<String, dynamic>> products = [
    {"image": "assets/images/image90.png", "title": "Amul Taaza Toned Fresh Milk", "time": "16 MINS", "price": "₹ 27"},
    {"image": "assets/images/image44.png", "title": "Potato (Aloo)", "time": "16 MINS", "price": "₹ 37"},
    {"image": "assets/images/image46.png", "title": "Hybrid Tomato", "time": "16 MINS", "price": "₹ 37"},
  ];

  final List<Map<String, dynamic>> grocery = [
    {"image": "assets/images/image41.png", "title": "Vegetables & Fruits"},
    {"image": "assets/images/image42.png", "title": "Atta, Dal & Rice"},
    {"image": "assets/images/image43.png", "title": "Oil, Ghee & Masala"},
    {"image": "assets/images/image6.png", "title": "Organic Cucumber"},
    {"image": "assets/images/image45.png", "title": "Biscuits & Bakery"},
  ];

  final List<Map<String, dynamic>> kitchen = [
    {"image": "assets/images/image21.png", "title": "Dry Fruits & Cereals"},
    {"image": "assets/images/image22.png", "title": "Kitchen & Appliances"},
    {"image": "assets/images/image23.png", "title": "Tea & Coffees"},
    {"image": "assets/images/image24.png", "title": "Ice Creams & much more"},
    {"image": "assets/images/image25.png", "title": "Noodles & Package Foods"},
  ];

  final List<Map<String, dynamic>> snacks = [
    {"image": "assets/images/image31.png", "title": "Chips & Namkeens"},
    {"image": "assets/images/image32.png", "title": "Sweet & Chocolates"},
    {"image": "assets/images/image33.png", "title": "Drinks & Juices"},
    {"image": "assets/images/image34.png", "title": "Sauces & Spreads"},
    {"image": "assets/images/image35.png", "title": "Beauty & Cosmetics"},
  ];

  final List<Map<String, dynamic>> household = [
    {"image": "assets/images/image36.png", "title": "Detergents"},
    {"image": "assets/images/image37.png", "title": "Soaps"},
    {"image": "assets/images/image38.png", "title": "Perfumes"},
    {"image": "assets/images/image39.png", "title": "Furniture"},
    {"image": "assets/images/image40.png", "title": "Hair & Body Wash"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 1.5),
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: UiHelper.ContextText(
                            text: "Mega Holi Sale",
                            color: Colors.white,
                            fontweight: FontWeight.bold,
                            fontsize: 25,
                          ),
                        ),
                        saleSection("", sale),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, left: 16.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 270,  // Increase the height to avoid overflow
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 250,  // Match the height of the productCard to avoid overflow
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: products.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: productCard(products[index]),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildCategorySection("Grocery & Kitchen", grocery),
                      buildCategorySection("Kitchen & Appliances", kitchen),
                      buildCategorySection("Snacks & Drinks", snacks),
                      buildCategorySection("Household Essentials", household),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget saleSection(String title, List<Map<String, dynamic>> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SaleCard(item: items[index]),
              );
            },
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  Widget buildCategorySection(String title, List<Map<String, dynamic>> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UiHelper.ContextText(
          text: title,
          color: Colors.black,
          fontweight: FontWeight.normal,
          fontsize: 18,
          fontfamily: "bold",
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: CategoryCard(items[index]),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class SaleCard extends StatelessWidget {
  final Map<String, dynamic> item;

  const SaleCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        color: const Color(0xFFD9EBEB).withOpacity(0.9),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 50,
            bottom: 10,
            left: 0,
            right: 0,
            child: Image.asset(item["image"], height: 110, fit: BoxFit.contain),
          ),
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                item["title"],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Map<String, dynamic> item;

  const CategoryCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: const Color(0xFFD9EBEB),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            item["image"],
            fit: BoxFit.contain,
            width: 70,
            height: 70,
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: 100,
          child: Text(
            item["title"],
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "regular",
            ),
          ),
        ),
      ],
    );
  }
}

// Product Card
Widget productCard(Map<String, dynamic> product) {
  return SizedBox(
    width: 120,
    height: 250,
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
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 120,
              height: 32,
              child: Text(
                product["title"],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                const Icon(Icons.access_time, size: 14, color: Colors.black54),
                const SizedBox(width: 4),
                Text(
                  product["time"],
                  style: const TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              product["price"],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Positioned(
          top: 115,
          right: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
            ),
            child: const Text(
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
