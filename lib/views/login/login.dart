import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants/images.dart';
import '../../constants/style.dart';
import '../../responsive.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        decoration: BoxDecoration(
          image:
          DecorationImage(image: AssetImage(background), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white12,
                  ),
                  padding: const EdgeInsets.all(20),
                  width: Responsive.isDesktop(context)? size.width/2.7 : size.width/1.2,
                  child: Column(
                    children:  [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        logo,
                        width: 200,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Account Login',
                        style: MyTextStyles.sectionTitleSmallWhite,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          style: MyTextStyles.subHeadingWhite,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(

                            prefixIcon: const Icon(Icons.person_outline, color: Colors.white,),
                            hintText: 'Enter user name',
                            hintStyle: MyTextStyles.subHeadingWhite,
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          style: MyTextStyles.subHeadingWhite,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock_outline, color: Colors.white,),
                            hintText: 'Enter Password',
                            hintStyle: MyTextStyles.subHeadingWhite,
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        ),
                        onPressed: (){}, child: const Text('Login',),),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
