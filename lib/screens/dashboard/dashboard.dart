import 'package:flutter/material.dart';
import 'package:locked_wallet/screens/dashboard/tabs/contract_page.dart';
import 'package:locked_wallet/screens/dashboard/tabs/dashbard_widraw_contract.dart';
import 'package:locked_wallet/screens/dashboard/tabs/withdraw.dart';
import 'package:locked_wallet/screens/dashboard/tabs/withdraw_address.dart';
import 'package:locked_wallet/screens/dashboard/tabs/withdraw_history.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 5,
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
                      color: Color(0xFF0C331F)),
                  tabs: [
                    Tab(
                      text: "Dashboard withdraw contract",
                    ),
                    Tab(
                      text: "contract page",
                    ),
                    Tab(
                      text: "withdraw history",
                    ),
                    Tab(
                      text: "withdraw",
                    ),
                    Tab(
                      text: "withdraw address",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      DashBoardWithDrawContract(),
                      ContractPage(),
                      WithdrawHistory(),
                      Withdraw(),
                      WithdrawAddress(),
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
