import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DailyProfitLoss extends StatelessWidget {
  const DailyProfitLoss({Key? key}) : super(key: key);

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
              title: AxisTitle(text: 'Days')
            ),

              primaryYAxis: NumericAxis(title: AxisTitle(text: 'Profit / Loss')),
              series: <ChartSeries>[
                ColumnSeries<ProfitLoss, String>(
                    dataSource:  <ProfitLoss>[
                      ProfitLoss('1', 89),
                      ProfitLoss('2', 280),
                      ProfitLoss('3', 54),
                      ProfitLoss('4', 320),
                      ProfitLoss('5', 400),
                      ProfitLoss('6', -190),
                      ProfitLoss('7', 200),
                      ProfitLoss('8', -111),
                      ProfitLoss('9', 320),
                      ProfitLoss('10', 240),
                      ProfitLoss('11', 280),
                      ProfitLoss('12', 900),
                      ProfitLoss('13', -220),
                      ProfitLoss('14', 400),
                      ProfitLoss('15', -190),
                      ProfitLoss('16', 600),
                      ProfitLoss('17', -111),
                      ProfitLoss('18', 320),
                      ProfitLoss('19', -240),
                      ProfitLoss('20', 440),
                    ],
                    xValueMapper: (ProfitLoss sales, _) => sales.day,
                    yValueMapper: (ProfitLoss sales, _) => sales.profit,
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
              "Today Profit  =",
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
                "1030",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ],
    );
  }
}
class ProfitLoss {
  ProfitLoss(this.day, this.profit);
  final String day;
  final double profit;
}