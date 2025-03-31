import 'package:ecomm_flutter/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key});

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
            padding: const EdgeInsets.only(top: 20.0 ,bottom: 20.0 ,left: 16.0),
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
        ),
      ),
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
        SizedBox(height: 5),
        SizedBox(
          width: 100,
          child: Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            item["title"],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "regular"),
          ),
        ),
      ],
    );
  }
}
