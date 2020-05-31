import 'package:json_annotation/json_annotation.dart';

part 'save_room_notification.g.dart';

@JsonSerializable()
class SaveRoomNotificationRequest {
	
  @JsonKey(name: 'roomId')
  String roomId;

  @JsonKey(name: 'notifications')
	Notifications notifications;

	SaveRoomNotificationRequest(this.roomId, this.notifications);

  factory SaveRoomNotificationRequest.fromJson(Map<String, dynamic> json) => _$SaveRoomNotificationRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SaveRoomNotificationRequestToJson(this);
}

@JsonSerializable()
class Notifications {
	
  @JsonKey(name: 'desktopNotifications')
  String desktopNotifications;

  @JsonKey(name: 'disableNotifications')
	String disableNotifications;

  @JsonKey(name: 'emailNotifications')
	String emailNotifications;

  @JsonKey(name: 'audioNotificationValue')
	String audioNotificationValue;

  @JsonKey(name: 'desktopNotificationDuration')
	String desktopNotificationDuration;

  @JsonKey(name: 'audioNotifications')
	String audioNotifications;

  @JsonKey(name: 'unreadAlert')
	String unreadAlert;

  @JsonKey(name: 'hideUnreadStatus')
	String hideUnreadStatus;

  @JsonKey(name: 'mobilePushNotifications')
	String mobilePushNotifications;

	Notifications(this.desktopNotifications, this.disableNotifications, this.emailNotifications, this.audioNotificationValue, this.desktopNotificationDuration, this.audioNotifications, this.unreadAlert, this.hideUnreadStatus, this.mobilePushNotifications);

	factory Notifications.fromJson(Map<String, dynamic> json) => _$NotificationsFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationsToJson(this);
}