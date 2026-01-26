import 'package:hive_ce/hive.dart';

part 'notification_data.g.dart';

@HiveType(typeId: 1)
class NotificationData {
  @HiveField(0)
  String minBefore;

  @HiveField(1)
  String notificationSound;

  @HiveField(2)
  String notificationMethod;

  NotificationData({required this.minBefore, required this.notificationSound, required this.notificationMethod});
}
