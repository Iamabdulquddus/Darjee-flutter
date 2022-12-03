import 'package:flutter/material.dart';

import '../../../admin/sidebar/sidebar_widget.dart';
import '../../content.dart';
import 'componets/add_worker_salary.dart';
import 'componets/all_worker_salary.dart';

class WorkerSalary extends StatelessWidget {
  const WorkerSalary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
        context,
        cardOfUserTable(
          context,
          Column(
            children: [
              AddWorkerSalary(),
              SizedBox(
                height: 20,
              ),
              AllWorkerSalary(),
            ],
          ),
        ),
      ),
    );
  }
}
