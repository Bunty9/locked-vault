import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class WeeklyEarning extends StatelessWidget {
  const WeeklyEarning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*.5,
          child: SfCartesianChart(
              palette: [Color(0xFF0C331F)],
              primaryXAxis: CategoryAxis(
                  title: AxisTitle(text: 'Weeks')
              ),

              primaryYAxis: NumericAxis(title: AxisTitle(text: 'Earnings')),
              series: <ChartSeries>[
                ColumnSeries<EarningModel, String>(
                    dataSource:  <EarningModel>[
                      EarningModel('Week 1', 320),
                      EarningModel('Week 2', 580),
                      EarningModel('Week 3', 444),
                      EarningModel('Week 4', 600),

                    ],
                    xValueMapper: (EarningModel sales, _) => sales.week,
                    yValueMapper: (EarningModel sales, _) => sales.earning,
                    dataLabelSettings: DataLabelSettings(
                        isVisible: true
                    )
                )
              ]
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              "This Week Earning  =",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFF0C331F))
              ),
              child: Text(
                "320",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ],
    );
  }
}
class EarningModel {
  EarningModel(this.week, this.earning);
  final String week;
  final double earning;
}