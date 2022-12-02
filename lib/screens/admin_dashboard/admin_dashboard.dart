import 'package:flutter/material.dart';
import 'package:locked_wallet/screens/admin_dashboard/tabs/daily_profit_loss.dart';
import 'package:locked_wallet/screens/admin_dashboard/tabs/roz_by_week.dart';
import 'package:locked_wallet/screens/admin_dashboard/tabs/running_monthl_total_roz.dart';
import 'package:locked_wallet/screens/admin_dashboard/tabs/weekly_earnings.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.white,
                  labelPadding: EdgeInsets.zero,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF0C331F)
                  ),
                  tabs: [
                    Tab(
                      text: "Daily profit/loss",
                    ),
                    Tab(
                      text: "Weekly earnings",
                    ),
                    Tab(
                      text: "Running Monthly total Roz",
                    ),

                    Tab(
                      text: "% Roz by week",
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: TabBarView(
                    children: [
                      DailyProfitLoss(),
                      WeeklyEarning(),
                      RunningMonthlyTotalRoz(),
                      RozByWeek(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
