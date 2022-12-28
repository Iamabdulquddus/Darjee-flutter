// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:darjee_flutter/views/dryclean_orders/complete_orders/complete_orders.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import '../views/accounts/commission/commission.dart';
import '../views/accounts/commission/commission_worker.dart';
import '../views/configuration/design_options/components/view_design_option.dart';
import '../views/configuration/design_options/design_options.dart';
import '../views/configuration/measurement_book/measurement_book.dart';
import '../views/configuration/measurement_title/measurement_title.dart';
import '../views/configuration/worker_salary/worker_salary.dart';
import '../views/configuration/worker_type/worker_type.dart';
import '../views/customer/customer.dart';
import '../views/dashboard/dashboard.dart';
import '../views/dryclean_orders/assigned_orders/assigned_order.dart';
import '../views/dryclean_orders/delivered_to_shop/delivered_to_shop.dart';
import '../views/dryclean_orders/unassigned_orders/unassigned_orders.dart';
import '../views/fabric/article_title/article_title.dart';
import '../views/fabric/brand/brand.dart';
import '../views/fabric/fabric_item/fabric_item.dart';
import '../views/franchise/franchise.dart';
import '../views/order_details/order_details.dart';
import '../views/generate_order/generate_order.dart';
import '../views/login/login.dart';
import '../views/splash/splash.dart';
import '../views/stiching_orders/do_action_button.dart';
import '../views/stiching_orders/stiching_orders.dart';


class MyRoutes {

  ///views routes***************
  static String splash = '/splash';
  static String dashboard = '/dashboard';
  static String franchise = '/franchise';
  static String login = '/login';
  static String generateOrder = '/generate-order';
  static String customer = '/customer';
  static String measurementTitle = '/measurement-title';
  static String measurementBook = '/measurement-book';
  static String designOptions = '/design-options';
  static String viewDesignOptions = '/view-design-options';
  static String workerType = '/worker-type';
  static String workerSalary = '/worker-salary';
  static String articleTitle = '/article-title';
  static String brandTitle = '/brand-title';
  static String fabricItem = '/fabric-item';
  static String orderDetails = '/order-details';
  static String stitchingOrders = '/stitching-orders';
  static String unassignedOrders = '/unassigned-orders';
  static String assignedOrders = '/assigned-orders';
  static String completeOrders = '/complete-orders';
  static String deliveredToShop = '/delivered-to-shop';
  static String stitchingOrdersAction = '/stitching-orders-action';
  static String commission = '/commission';
  static String commissionWorker = '/commission-worker';


  static String getSplash() => splash;
  static String getDashboard() => dashboard;
  static String getFranchise() => franchise;
  static String getLogin() => login;
  static String getGenerateOrder() => generateOrder;
  static String getCustomer() => customer;
  static String getMeasurementTitle() => measurementTitle;
  static String getMeasurementBook() => measurementBook;
  static String getDesignOptions() => designOptions;
  static String getViewDesignOptions() => viewDesignOptions;
  static String getWorkerType() => workerType;
  static String getWorkerSalary() => workerSalary;
  static String getArticleTitle() => articleTitle;
  static String getBrandTitle() => brandTitle;
  static String getFabricItem() => fabricItem;
  static String getOrderDetails() => orderDetails;
  static String getStitchingOrders() => stitchingOrders;
  static String getUnassignedOrders() => unassignedOrders;
  static String getAssignedOrders() => assignedOrders;
  static String getCompleteOrders() => completeOrders;
  static String getDeliveredToShop() => deliveredToShop;
  static String getStitchingOrdersAction() => stitchingOrdersAction;
  static String getCommission() => commission;
  static String getCommissionWorker() => commissionWorker;


  /// *********************GetPage************************

  static List<GetPage> appRoutes() => [

    GetPage(
      name: splash,
      page: () => Splash(),
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
      name: viewDesignOptions,
      page: () => ViewDesignOptions(),
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
      name: orderDetails,
      page: () => OrderDetails(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: stitchingOrders,
      page: () => StitchingOrders(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: unassignedOrders,
      page: () => UnassignedOrders(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: assignedOrders,
      page: () => AssignedOrders(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: completeOrders,
      page: () => CompleteOrders(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: deliveredToShop,
      page: () => DeliveredToShop(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: stitchingOrdersAction,
      page: () => StitchingOrdersAction(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: commission,
      page: () => Commission(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: commissionWorker,
      page: () => CommissionWorker(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),
  ];
}
