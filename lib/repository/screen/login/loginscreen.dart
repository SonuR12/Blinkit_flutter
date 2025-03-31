import 'package:ecomm_flutter/domain/constants/appcolors.dart';
import 'package:ecomm_flutter/repository/screen/mainScreen/ScreenSkeleton.dart';
import 'package:ecomm_flutter/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                // UpperHalf
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 80),
                  child: UiHelper.CustomImage(img: "blinkitlogin.jpeg"),
                ),
              ),

              // LowerHalf
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
                  ),
                  width: double.infinity,
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.ContextText(
                          text: "Sonu",
                          fontfamily: "regular",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 25,
                        ),
                        UiHelper.ContextText(
                          text: "99XXXXXX64",
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 15,
                        ),
                        SizedBox(height: 15),
                        SizedBox(
                          height: 50,
                          width: 400,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenSkeleton()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ), // Removes rounded corners
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.ContextText(
                                  text: "Login with",
                                  color: Colors.white,
                                  fontweight: FontWeight.bold,
                                  fontsize: 14,
                                ),
                                SizedBox(width: 6),
                                UiHelper.ContextText(
                                  text: "Gmail",
                                  color: Colors.white,
                                  fontweight: FontWeight.normal,
                                  fontfamily: "bold",
                                  fontsize: 18,
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 5),

                        UiHelper.ContextText(
                          text: "Access your saved addresses from gmail automatically",
                          color: Colors.blueGrey,
                          fontweight: FontWeight.normal,
                          fontsize: 12,
                        ),


                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0, // No elevation when idle
                            shadowColor: Colors.transparent, // Prevents elevation effect when pressed
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero, // Removes rounded corners
                            ),
                          ),
                          child: UiHelper.ContextText(
                            text: "or login with phone number",
                            color: Colors.green.shade600,
                            fontweight: FontWeight.normal,
                            fontsize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          // BlinkitIcon
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 70,
            left: MediaQuery.of(context).size.width / 2 - 75,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30,), // Adjust radius as needed
              child: UiHelper.CustomImage(img: "blinkitIcon.png"),
            ),
          ),
        ],
      ),
    );
  }
}
