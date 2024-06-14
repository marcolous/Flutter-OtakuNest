import 'status.dart';

class Statistics {
  Status? status;
  int? numListUsers;

  Statistics({this.status, this.numListUsers});

  factory Statistics.fromJson(Map<String, dynamic> json) => Statistics(
        status: json['status'] == null
            ? null
            : Status.fromJson(json['status'] as Map<String, dynamic>),
        numListUsers: json['num_list_users'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'status': status?.toJson(),
        'num_list_users': numListUsers,
      };
}
