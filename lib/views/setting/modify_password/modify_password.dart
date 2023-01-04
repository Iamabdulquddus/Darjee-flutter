import 'package:darjee_flutter/admin/sidebar_setting/sidebar_setting.dart';
import 'package:darjee_flutter/constants/style.dart';
import 'package:darjee_flutter/responsive.dart';
import 'package:flutter/material.dart';
import '../../../widgets/textformfeild.dart';
import '../../content.dart';


class ModifyPassword extends StatelessWidget {
  const ModifyPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: snowBackground,
      body: settingWidgetSidebar(
        context,
        cardOfUserTable(
          context,
            Container(
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
                          Icons.lock,
                          color: Colors.white,
                        ),
                        Text(
                          '  Modify Password',
                          style: MyTextStyles.headingxSmallBoldWhite,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    padding: const EdgeInsets.all(wDefaultPadding / 2),
                    color: lightColor,
                    child: SizedBox(
                      height: 300,
                      width: Responsive.isDesktop(context)? size.width/2.5 :null,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text('To Change password first type old password and then you can type new password', style: MyTextStyles.subHeadingBoldBlack,),
                          SizedBox(height: 20,),
                          CustomTextFormField(maxLines: 1,labelText: 'Old Password',),
                          SizedBox(height: 20,),
                          CustomTextFormField(maxLines: 1,labelText: 'New Password',),
                          CustomTextFormField(maxLines: 1,labelText: 'Confirm New Password',),
                          SizedBox(height: 10,),
                          ElevatedButton(onPressed: (){}, child: Text('Confirm'),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
