import 'package:darjee_flutter/views/accounts/commission/components/worker_commission_list.dart';
import 'package:flutter/material.dart';
import '../../../admin/sidebar/sidebar_widget.dart';
import '../../../constants/style.dart';
import '../../content.dart';
import 'components/closing_amount.dart';
import 'components/commission_worker_detail.dart';

class CommissionWorker extends StatefulWidget {
  const CommissionWorker({Key? key}) : super(key: key);

  @override
  State<CommissionWorker> createState() => _CommissionWorkerState();
}

class _CommissionWorkerState extends State<CommissionWorker> {
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
              CommissionWorkerDetail(),
              SizedBox(
                height: 20,
              ),
              Container(
                // height: 700,

                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children:  [
                      TabBar(
                        labelColor: primary,
                        labelStyle: MyTextStyles.headingxSmallBoldWhite,
                        unselectedLabelColor: Colors.grey,
                        overlayColor: MaterialStatePropertyAll(lightColor),
                        unselectedLabelStyle: MyTextStyles.headingxSmallBoldGrey,
                        tabs: [
                          Tab(text: 'Worker Commission List', icon: Icon(Icons.person),),
                          Tab(text: 'Worker Advance List', icon: Icon(Icons.person),),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        padding: EdgeInsets.only(top: 20),
                        child: TabBarView(
                          children: [
                            WorkerCommissionList(),
                            Center(child: Text('Advance table here')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return  const ClosingAmount(
                                    lastBalance: '4500', commission: '1000', advance: '500',
                                  );
                                },
                              );
                            },
                          );

                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Closing Amount"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
