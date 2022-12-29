import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';
import '../../admin/sidebar/sidebar_widget.dart';
import '../content.dart';
import 'components/add_worker_info.dart';
import 'components/all_workers_list.dart';

class Worker extends StatelessWidget {
  const Worker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: snowBackground,
      body: WidgetWithSidebar(
        context,
        cardOfUserTable(
          context,
          Column(
            children: [
              AddWorkerInfo(),
              SizedBox(
                height: 20,
              ),
              AllWorkersList()
            ],
          ),
        ),
      ),
    );
  }
}
