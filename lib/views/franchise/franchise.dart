import 'dart:ui';

import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

import '../../constants/images.dart';
import '../../model/franchise_item.dart';
import '../../responsive.dart';
import 'components/franchise_card.dart';

class Franchise extends StatelessWidget {
  const Franchise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          decoration: BoxDecoration(
            image:
            DecorationImage(image: AssetImage(background1), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: wDefaultPadding),
                child: Image.asset(logo, height: 100,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: wDefaultPadding*2, vertical: wDefaultPadding),
                child: GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: wDefaultPadding *2,
                  crossAxisSpacing:  wDefaultPadding *2,
                  crossAxisCount: 3,
                  children:
                    List.generate(
                      franchiseItemList.length,
                          (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: FranchiseCard(
                          cardItem: franchiseItemList[index],
                        ),
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
