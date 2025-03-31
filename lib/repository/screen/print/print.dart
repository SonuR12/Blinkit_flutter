import 'package:ecomm_flutter/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class PrintPage extends StatelessWidget {
  const PrintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Align(
                child: Column(
                  children: [
                    UiHelper.ContextText(
                      text: "Print Store",
                      color: Colors.black,
                      fontweight: FontWeight.w900,
                      fontsize: 35,
                    ),
                    UiHelper.ContextText(
                      text: "Blinkit ensures secure prints at every stage",
                      color: Colors.black.withOpacity(0.5),
                      fontweight: FontWeight.w900,
                      fontsize: 16,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UiHelper.ContextText(
                          text: "Documents",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 18,
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.grey, size: 16),
                            SizedBox(width: 5),
                            Text("Price starting at rs 3/page", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.grey, size: 16),
                            SizedBox(width: 5),
                            Text("Paper quality: 70 GSM", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.grey, size: 16),
                            SizedBox(width: 5),
                            Text("Single side prints", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 4,
                            backgroundColor: Colors.green,
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                          child: Text(
                            "Upload Files",
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    "assets/images/image62.png",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}