import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

import '../../../admin/sidebar/sidebar_widget.dart';
import '../../content.dart';
import 'components/add_worker_type.dart';
import 'components/all_worker_types.dart';

class WorkerType extends StatelessWidget {
  const WorkerType({Key? key}) : super(key: key);

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
              AddWorkerType(),
              SizedBox(
                height: 20,
              ),
              AllWorkerTypes(),
            ],
          ),
        ),
      ),
    );
  }
}
