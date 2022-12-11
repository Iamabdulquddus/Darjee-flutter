import 'package:darjee_flutter/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      MyRoutes.getSplash());
                },
                child: const Text('Splash'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      MyRoutes.getDashboard());
                },
                child: const Text('Dashboard'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      MyRoutes.getCustomer());
                },
                child: const Text('Customer'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      MyRoutes.getMeasurementTitle());
                },
                child: const Text('Measurement Title'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      MyRoutes.getMeasurementBook());
                },
                child: const Text('Measurement Book'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      MyRoutes.getDesignOptions());
                },
                child: const Text('Design Options'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      MyRoutes.getWorkerType());
                },
                child: const Text('Worker Type'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      MyRoutes.getWorkerSalary());
                },
                child: const Text('Worker Salary'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      MyRoutes.getArticleTitle());
                },
                child: const Text('Article Title'),
              ),
              ElevatedButton(
                onPressed: () {

                  Get.toNamed(MyRoutes.getBrandTitle());
                },
                child: const Text('Brand Title'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(MyRoutes.getGenerateOrder());
                },
                child: const Text('Generate Order'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(MyRoutes.getStitchingOrders());
                },
                child: const Text('Stitching Orders'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(MyRoutes.getUnassignedOrders());
                },
                child: const Text('Unassigned Orders'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
