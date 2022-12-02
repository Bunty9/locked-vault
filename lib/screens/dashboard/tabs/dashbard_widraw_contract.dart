import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:locked_wallet/screens/admin_dashboard/admin_dashboard.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../common_widget/reusable_tableRow.dart';
import '../../../models/graphmodel.dart';

class DashBoardWithDrawContract extends StatelessWidget {
  const DashBoardWithDrawContract({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getDashboardData();
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  "assets/hersheybar381.png",
                  fit: BoxFit.cover,
                ),
              ),
              Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return AdminDashboard();
                        },
                      ),
                    );
                  },
                  child: Icon(Icons.menu))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          //graph
          Container(
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                // Enable legend
                legend: Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <LineSeries<GraphModel, String>>[
                  LineSeries<GraphModel, String>(
                      dataSource: <GraphModel>[
                        GraphModel('Jan', 12),
                        GraphModel('Feb', 8),
                        GraphModel('Mar', 25),
                        GraphModel('Apr', 5),
                        GraphModel('May', 10)
                      ],
                      xValueMapper: (GraphModel sales, _) => sales.year,
                      yValueMapper: (GraphModel sales, _) => sales.sales,
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: true))
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        "Balance",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "315585",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        "Equity",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "31500",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        "Net Path",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "315585",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        "Equity",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "31500",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Table(
            border: TableBorder.all(),
            columnWidths: {
              0: FractionColumnWidth(0.5),
              1: FractionColumnWidth(0.25),
              2: FractionColumnWidth(0.25),
              3: FractionColumnWidth(0.25),
              4: FractionColumnWidth(0.25),
            },
            children: [
              ReusableTableRow(['Trades', 'P/Ps', 'Time']),
              ReusableTableRow(['GBP/USD', '20', '55']),
              ReusableTableRow(['Jpy/USD', '40', '74']),
              ReusableTableRow(['BTC/USD', '71', '17']),
              ReusableTableRow(['XUA/USD', '67', '11']),
            ],
          )
        ],
      ),
    );
  }

  getDashboardData() async {
    try {
      await Dio()
          .post('http://localhost:8080/api/dashboard/all',
              data: jsonEncode({"userId": "1"}))
          .then((value) => print(value.data));
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
