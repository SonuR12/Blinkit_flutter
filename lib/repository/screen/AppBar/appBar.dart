import 'package:ecomm_flutter/repository/widgets/uihelper.dart';
import 'package:ecomm_flutter/domain/constants/appcolors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  CustomAppBar({super.key, this.backgroundColor = AppColors.scaffoldbackground});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color textColor = backgroundColor == AppColors.scaffoldbackground ? Colors.black : Colors.white;

    return AppBar(
      backgroundColor: backgroundColor, // Dynamically change color
      automaticallyImplyLeading: false,
      toolbarHeight: 175,
      title: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UiHelper.ContextText(
                text: "Blinkit.in",
                color: textColor, // Change text color dynamically
                fontweight: FontWeight.normal,
                fontfamily: "bold",
                fontsize: 14,
              ),
              UiHelper.ContextText(
                text: "15 minutes",
                fontfamily: "bold",
                fontsize: 28,
                fontweight: FontWeight.normal,
                color: textColor, // Change text color dynamically
              ),
              Row(
                children: [
                  UiHelper.ContextText(
                    text: "Home - ",
                    fontfamily: "bold",
                    fontweight: FontWeight.normal,
                    fontsize: 15,
                    color: textColor, // Change text color dynamically
                  ),
                  UiHelper.ContextText(
                    text: "G-120 Saurabh Vihar, Jaitpur, Badarpur (Sonu) ",
                    fontsize: 12.5,
                    fontweight: FontWeight.w400,
                    color: textColor, // Change text color dynamically
                  ),
                  Icon(Icons.keyboard_arrow_down, size: 30, color: textColor),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Search for items...",
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    suffixIcon: Icon(Icons.mic, color: Colors.black),
                    contentPadding: const EdgeInsets.symmetric(vertical: 5),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 10,
            top: 4,
            child: CircleAvatar(
              backgroundColor: backgroundColor == Colors.red ? Colors.black : Colors.white,
              child: Icon(
                Icons.person,
                size: 30,
                color: textColor, // Change text color dynamically
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(170);
}
