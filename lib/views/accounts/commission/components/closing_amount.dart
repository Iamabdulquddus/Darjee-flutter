import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

class ClosingAmount extends StatefulWidget {
  final String
      lastBalance,
  commission, advance;

  const ClosingAmount({super.key,
    required this.lastBalance, required this.commission, required this.advance,
  });

  @override
  State<ClosingAmount> createState() => _ClosingAmountState();
}

class _ClosingAmountState extends State<ClosingAmount> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.all(10),
      title:  Text('Closing Amount', style: MyTextStyles.sectionTitleSmallPrimary,),
      content: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Last Balance',
                    style: MyTextStyles.subHeadingBoldPrimary,
                  ),
                  Text(
                    "Rs ${widget.lastBalance} /-",
                    style: MyTextStyles.regularPrimary,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Commission',
                    style: MyTextStyles.subHeadingBoldPrimary,
                  ),
                  Text(
                    "Rs ${widget.commission} /-",
                    style: MyTextStyles.regularPrimary,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily Advance',
                    style: MyTextStyles.subHeadingBoldPrimary,
                  ),
                  Text(
                    "Rs ${widget.advance} /-",
                    style: MyTextStyles.regularPrimary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close Ammount'),),
            ),
          ],
        ),
      ],
    );
  }
}
