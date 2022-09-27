import 'dart:ui';

import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

import '../../../model/franchise_item.dart';

class FranchiseCard extends StatelessWidget {
  const FranchiseCard({Key? key, required this.cardItem}) : super(key: key);
  final FranchiseItem cardItem;
  final elevation = 10.0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: InkWell(
          onTap: (){
            //TODO: add the franchise link here

          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cardItem.image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black12, BlendMode.srcATop),
              ),

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end  ,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
                  child: Center(
                    child: Text(
                      cardItem.title,
                      style: MyTextStyles.headingSmallWhite,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
