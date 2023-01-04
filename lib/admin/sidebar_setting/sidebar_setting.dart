import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../responsive.dart';
import 'package:get/get.dart';
import '../../constants/images.dart';
import '../../constants/style.dart';
import '../../controllers/sidebar_controller.dart';
import '../../model/side_menu_item.dart';
import '../../routes/routes.dart';

List<CDM> sidebarSettingList = [
  CDM(
    imageIcon: dashboard,
    title: 'Admin',
    submenus: [
      subList(
          subImageIcon: dashboard,
          subTitle: 'Profile',
          myRoute: MyRoutes.getAdminProfile(),
      ),
      subList(
          subImageIcon: dashboard,
          subTitle: 'Modify Password',
          myRoute: MyRoutes.getModifyPassword(),
      ),
    ],
  ),
  CDM(
    imageIcon: dashboard,
    title: 'Franchise',
    submenus: [
      subList(
          subImageIcon: dashboard,
          subTitle: 'Franchise',
          myRoute: MyRoutes.getSettingFranchise(),
      ),
    ],
  ),

];

SidebarController sidebarController = Get.put(SidebarController());

Row settingWidgetSidebar(BuildContext context, Widget widget) {
  return Row(
    children: [
      Responsive.isDesktop(context)
          ? settingSidebarDesktop(context)
          : onMobileSidebar(context),
      Expanded(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Responsive(
                    mobile: headerTitle(wDefaultPadding),
                    tablet: headerTitle(wDefaultPadding * 2.5),
                    desktop: headerTitle(wDefaultPadding * 4)),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            Expanded(
              flex: 8,
              child: widget,
            )
          ],
        ),
      )
    ],
  );
}

Widget headerTitle(double DefaultPadding) {
  return Obx(
    () => Padding(
      padding: EdgeInsets.only(
        left: DefaultPadding,
      ),
      child: RichText(
        text: TextSpan(

          children: <TextSpan>[
            TextSpan(
                text: sidebarSettingList[sidebarController.selectedMenuIndex.value]
                    .title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            TextSpan(
                text:
                    " > ${sidebarSettingList[sidebarController.selectedMenuIndex.value].submenus[sidebarController.selectedSubmenuIndex.value].subTitle}", ),
          ],
        ),
      ),
    ),
  );
}

Widget settingSidebarDesktop(BuildContext context) {
  return Container(
    width: 200,
    color: primary,
    child: Column(
      children: [
        SidebarLogo(logo, 38.0),
        Obx(() => Expanded(child: ListItem())),
        backToApp(18.0, Icons.dashboard, "Dashboard", context)
      ],
    ),
  );
}

Align backToApp(
    double padding, IconData icon, String tilte, BuildContext context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: EdgeInsets.all(padding),
      child: InkWell(
        onTap: () {
          if (kDebugMode) {
            print("Going back to app");
            Get.toNamed(MyRoutes.getDashboard());
          }
        },
        child: Responsive.isDesktop(context)
            ? Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    tilte,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              )
            : Icon(
                icon,
                color: Colors.white,
              ),
      ),
    ),
  );
}

Align SidebarLogo(String logo, double padding) {
  return Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: EdgeInsets.all(padding),
      child: Image.asset(
        logo,
      ),
    ),
  );
}

ListView ListItem() {
  return ListView.builder(
      key: Key(
          '${sidebarController.selectedMenuIndex.value.toString()}'), //attention
      itemCount: sidebarSettingList.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(2),
          color: primary,
          child: ExpansionTile(
            // iconColor: Colors.white,
            key: Key(index.toString()),
            initiallyExpanded:
                index == sidebarController.selectedMenuIndex.value,
            collapsedBackgroundColor: Colors.white30,
            leading:Image.asset(sidebarSettingList[index].imageIcon, height: 25,),
            // Icon(
            //   sidebarList[index].icon,
            //   color: Colors.white,
            // ),
            title: Transform.translate(
              offset: const Offset(-21, 0),
              child: Text(
                sidebarSettingList[index].title,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),

            children: List.generate(
                sidebarSettingList[index].submenus.length,
                (index2) => subManuButton(
                    index, index2, sidebarSettingList[index].submenus[index2], false)),
            // children: sidebarList[index].submenus.map((e) {
            //   return subManuButton(index,e,false);
            // }).toList(),
          ),
        );
      });
}

Widget onMobileSidebar(BuildContext context) {
  return AnimatedContainer(
    duration: const Duration(seconds: 1),
    width: 85,
    color: primary,
    child: Column(
      children: [
        SidebarLogo(logo, 21),
        Obx(() => Expanded(child: SidebarListForMobile())),
        backToApp(9, Icons.dashboard, "Dashboard", context)
      ],
    ),
  );
}

ListView SidebarListForMobile() {
  return ListView.builder(
      key: Key(sidebarController.selectedMenuIndex.value.toString()),
      itemCount: sidebarSettingList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(1.7),
          child: ExpansionTile(
            key: Key(index.toString()),
            initiallyExpanded:
                index == sidebarController.selectedMenuIndex.value,
            collapsedBackgroundColor: Colors.white30,
            title: Image.asset(sidebarSettingList[index].imageIcon, height: 35,),
            children: List.generate(
                sidebarSettingList[index].submenus.length,
                (index2) => subManuButtonOnMobile(
                    index, index2, sidebarSettingList[index].submenus[index2], false)),
          ),
        );
      });
}

Widget subManuButtonOnMobile(
    int menu, int submenu, subList subManu, bool bool) {
  return Obx(
    () => Container(
      decoration: sidebarController.selectedSubmenuIndex.value == submenu &&
              sidebarController.selectedMenuIndex.value == menu
          ? BoxDecoration(
              border: Border(
                  bottom: BorderSide(
              color: Colors.amber,
              width: 1.0, // Underline thickness
            )))
          : null,
      child: InkWell(
        onTap: () {
          sidebarController.expandOrShrinkDrawer(
              menu, submenu, subManu.myRoute!);
          print('menu=> $menu');
          print('submenu=> $submenu');
          print(
              'sidebarController.selectedSubmenuIndex.value=> ${sidebarController.selectedSubmenuIndex.value}');
          print(
              ' sidebarController.selectedMenuIndex.value=> ${sidebarController.selectedMenuIndex.value}');
        },
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ListTile(
            leading: Image.asset(subManu.subImageIcon, height: 15,),
            // Icon(
            //   subManu.subIcon,
            //   color: Colors.white,
            //   size: 22,
            // ),
          ),
        ),
      ),
    ),
  );
}

Widget subManuButton(int menu, int submenu, subList subManu, bool bool) {
  return Obx(
    () => Container(
      decoration: sidebarController.selectedSubmenuIndex.value == submenu &&
              sidebarController.selectedMenuIndex.value == menu
          ? BoxDecoration(
              border: Border(
                  bottom: BorderSide(
              color: Colors.amber,
              width: 1.0, // Underline thickness
            )))
          : null,
      child: InkWell(
        onTap: () {
          sidebarController.expandOrShrinkDrawer(
              menu, submenu, subManu.myRoute!);
          print('menu=> $menu');
          print('submenu=> $submenu');
          print(
              'sidebarController.selectedSubmenuIndex.value=> ${sidebarController.selectedSubmenuIndex.value}');
          print(
              ' sidebarController.selectedMenuIndex.value=> ${sidebarController.selectedMenuIndex.value}');
        },
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: ListTile(
            leading: Image.asset(subManu.subImageIcon, height: 20,),
            // Icon(
            //   subManu.subIcon,
            //   color: Colors.white,
            //   size: 19,
            // ),
            title: Transform.translate(
              offset: Offset(-16, 0),
              child: Text(
                subManu.subTitle,
                style: TextStyle(
                  fontSize: bool ? 17 : 12,
                  color: bool ? Colors.white : Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget sMenuButton(String subMenu, bool isTitle) {
  return InkWell(
    onTap: () {
      //handle the function
      //if index==0? donothing: doyourlogic here
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        subMenu,
        style: TextStyle(
          fontSize: isTitle ? 17 : 14,
          color: isTitle ? Colors.white : Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
