import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../constants/style.dart';

class SearchCustomer extends StatefulWidget {
  const SearchCustomer({Key? key}) : super(key: key);

  @override
  State<SearchCustomer> createState() => _SearchCustomerState();
}

class _SearchCustomerState extends State<SearchCustomer> {
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: 180,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: secondary),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: const BoxDecoration(
              color: secondary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.book,
                  color: Colors.black,
                ),
                Text(
                  '  Measurement Book',
                  style: MyTextStyles.headingxSmallBoldBlack,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(wDefaultPadding),
              color: lightColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Search Customer',
                    style: MyTextStyles.sectionTitleSmallPrimary,
                  ),
                  if (isSearch)
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter search term ',
                        prefixIcon: IconButton(
                            icon: const Icon(Icons.cancel),
                            onPressed: () {
                              setState(() {
                                isSearch = false;
                              });
                              // _initializeData();
                            }),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {},
                        ),
                      ),
                      onSubmitted: (value) {
                        // _filterData(value);
                      },
                    )),
                  if (!isSearch)
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isSearch = true;
                        });
                      },
                      child: Row(
                        children: const [
                          Padding(
                            padding:  EdgeInsets.all(15.0),
                            child: Icon(Icons.search),
                          ),
                          Text(' Search'),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
