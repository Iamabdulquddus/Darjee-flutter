// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import '../views/configuration/design_options/design_options.dart';
import '../views/configuration/measurement_book/measurement_book.dart';
import '../views/configuration/measurement_title/measurement_title.dart';
import '../views/configuration/worker_salary/worker_salary.dart';
import '../views/configuration/worker_type/worker_type.dart';
import '../views/customer/customer.dart';
import '../views/dashboard/dashboard.dart';
import '../views/fabric/article_title/article_title.dart';
import '../views/fabric/brand/brand.dart';
import '../views/fabric/fabric_item/fabric_item.dart';
import '../views/franchise/franchise.dart';
import '../views/generate_order/components/select_item.dart';
import '../views/generate_order/generate_order.dart';
import '../views/login/login.dart';
import 'display.dart';


class MyRoutes {

  ///views routes***************
  static String display = '/display';
  static String dashboard = '/dashboard';
  static String franchise = '/franchise';
  static String login = '/login';
  static String generateOrder = '/generate-order';
  static String customer = '/customer';
  static String measurementTitle = '/measurement-title';
  static String measurementBook = '/measurement-book';
  static String designOptions = '/design-options';
  static String workerType = '/worker-type';
  static String workerSalary = '/worker-salary';
  static String articleTitle = '/article-title';
  static String brandTitle = '/brand-title';
  static String fabricItem = '/fabric-item';
  static String selectItem = '/select-item';


  static String getDisplay() => display;
  static String getDashboard() => dashboard;
  static String getFranchise() => franchise;
  static String getLogin() => login;
  static String getGenerateOrder() => generateOrder;
  static String getCustomer() => customer;
  static String getMeasurementTitle() => measurementTitle;
  static String getMeasurementBook() => measurementBook;
  static String getDesignOptions() => designOptions;
  static String getWorkerType() => workerType;
  static String getWorkerSalary() => workerSalary;
  static String getArticleTitle() => articleTitle;
  static String getBrandTitle() => brandTitle;
  static String getFabricItem() => fabricItem;
  static String getSelectItem() => selectItem;


  /// *********************GetPage************************

  static List<GetPage> appRoutes() => [
    GetPage(
      name: display,
      page: () => Display(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: dashboard,
      page: () => Dashboard(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: franchise,
      page: () => Franchise(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: login,
      page: () => Login(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: generateOrder,
      page: () => GenerateOrder(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: customer,
      page: () => Customer(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: measurementTitle,
      page: () => MeasurementTitle(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: measurementBook,
      page: () => MeasurementBook(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: designOptions,
      page: () => DesignOptions(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: workerType,
      page: () => WorkerType(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: workerSalary,
      page: () => WorkerSalary(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: articleTitle,
      page: () => ArticleTitle(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: brandTitle,
      page: () => BrandTitle(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: fabricItem,
      page: () => FabricItem(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: selectItem,
      page: () => SelectItem(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),

  ];
}

