class StatsModel {
  final List<Data>? data;

  StatsModel({
    this.data,
  });

  StatsModel.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as List?)
            ?.map((dynamic e) => Data.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'data': data?.map((e) => e.toJson()).toList()};
}

class Data {
  final int? id;
  final int? userId;
  final String? balance;
  final String? equity;
  final String? startingbalance;
  final String? netprofit;
  final String? netloss;
  final String? trades;
  final String? createdAt;
  final String? updatedAt;

  Data({
    this.id,
    this.userId,
    this.balance,
    this.equity,
    this.startingbalance,
    this.netprofit,
    this.netloss,
    this.trades,
    this.createdAt,
    this.updatedAt,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        userId = json['userId'] as int?,
        balance = json['balance'] as String?,
        equity = json['equity'] as String?,
        startingbalance = json['startingbalance'] as String?,
        netprofit = json['netprofit'] as String?,
        netloss = json['netloss'] as String?,
        trades = json['trades'] as String?,
        createdAt = json['createdAt'] as String?,
        updatedAt = json['updatedAt'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'balance': balance,
        'equity': equity,
        'startingbalance': startingbalance,
        'netprofit': netprofit,
        'netloss': netloss,
        'trades': trades,
        'createdAt': createdAt,
        'updatedAt': updatedAt
      };
}
