import 'package:darjee_flutter/admin/sidebar_setting/sidebar_setting.dart';
import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';
import '../../content.dart';
import '../../../responsive.dart';

class AdminProfile extends StatelessWidget {
  const AdminProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: snowBackground,
      body: settingWidgetSidebar(
        context,
        cardOfUserTable(
          context,
          Column(
            children:const [
              AdminProfileCard(),
            ],
          ),
        ),
      ),
    );
  }
}


class AdminProfileCard extends StatelessWidget {
  const AdminProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // height: 620,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: secondary),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: const BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                Text(
                  '  Admin Profile',
                  style: MyTextStyles.headingxSmallBoldWhite,
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.all(wDefaultPadding / 2),
            color: lightColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Responsive.isDesktop(context)
                    ? Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: primary, width: 2),
                        ),
                        child: ClipOval(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset(
                              'assets/icons/avatar.png',
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(child: adminDetailCard()),
                  ],
                )
                    : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: primary, width: 2),
                        ),
                        child: ClipOval(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset(
                              'assets/icons/avatar.png',
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    adminDetailCard(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



Widget adminDetailCard() {
  return Card(
    color: lightColor,
    elevation: 5,
    shadowColor: secondary,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Table(
        border: TableBorder.all(width: 0, color: lightColor),
        defaultColumnWidth: FlexColumnWidth(1.0),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Full Name',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Joe Goldberg',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Registration Date',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  '12-28-2020',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Phone Number',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  '+923001234567',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('CNIC Number',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  '38404-12345678-9',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child:
                  Text('Gender', style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Male',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child:
                  Text('Franchise Name', style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Islamabad',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),

          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Admin Type',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Franchise Admin',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Address',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'The address should be of two lines max ... so The address should be of two lines max ... soThe address should be of two lines max so',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


